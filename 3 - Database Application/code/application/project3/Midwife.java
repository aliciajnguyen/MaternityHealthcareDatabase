package project3;

import java.util.*;
import java.sql.* ;
import java.sql.Date ;

public class Midwife{
    int aMid;
    Connection aCon;
    HashMap<Integer, Pregnancy> aPregMatch;
    HashMap<Integer, Appointment> aAptMatch;
    Appointment aSelectedAppointment;

    //after mid entered mid constructed before apt
    public Midwife(int pMid, Connection pCon){
        aMid = pMid;
        aCon = pCon;
    }

    public Appointment getAptSelection(){
        return aSelectedAppointment;
    }

    //constructs querie of matching midwife and date
    //then parses date into aPregMatch and aAptMatch
    //returns the number of rows available as options from the query
    public void getAppointments(String aptDate){
        aPregMatch = new HashMap<Integer, Pregnancy>();
        aAptMatch = new HashMap<Integer, Appointment>();

        int year = Integer.parseInt(aptDate.substring(0, 4));
        int month = Integer.parseInt(aptDate.substring(4, 6));
        int day = Integer.parseInt(aptDate.substring(6));

        //System.out.println("Midwife get apts: year: " + year + ", month:" + month + ", day: " + day);

        //get the query string: SEE AptFetchQuery.txt for more readable version
        ResultSet rs;
        PreparedStatement aptFetchStatement;
        String query = "WITH PregMatch (pregid, cid, mRole) AS "
            + "( (SELECT pregid, cid, 'P' AS mRole FROM Pregnancy WHERE primMid = ? )"
            + " UNION (SELECT pregid, cid, 'B' AS mRole FROM Pregnancy WHERE secondMid = ?) )"
            + ", PregMatchMotherId (pregid, patid, mRole) AS "
            + " ( SELECT pregid, patid, mRole FROM Couple C, PregMatch PM WHERE C.cid = PM.cid) "
            + "    , MotherInfo (patid , name, hcardid, pregid, mRole) AS "
            +"        ( SELECT P.patid, name, hcardid, PM.pregid, mRole FROM Patient P, PregMatchMotherId PM WHERE P.patid = PM.patid ) "
            + "    , AptMatch (date, time, pregid, aptid) AS "
            + " (SELECT date, time, pregid, aptid FROM Appointment A WHERE A.pregid IN (SELECT pregid FROM PregMatch)  AND YEAR(A.date) = ? AND MONTH(A.date) = ? AND DAY(A.date) = ?)"
            + " SELECT date, time, mRole, name, hcardid, M.patid, A.aptid, A.pregid FROM MotherInfo M, AptMatch A WHERE M.pregid = A.pregid "
            + " ORDER BY time";    
        

        try{
            //construct query with missing rel values:
            aptFetchStatement = aCon.prepareStatement(query);
            aptFetchStatement.setInt(1, Integer.valueOf(aMid));
            aptFetchStatement.setInt(2, Integer.valueOf(aMid));
            aptFetchStatement.setInt(3, year);
            aptFetchStatement.setInt(4, month);
            aptFetchStatement.setInt(5, day);
            //execute and process query
            rs = aptFetchStatement.executeQuery();

        //print error and exit method if no apt match CAREFUL MOVES CURSOR
        if(!rs.next()){ 
            System.out.println("No appointments for "+ year +"/" + month + "/" + day); 
            rs.close();
            aptFetchStatement.close ( ) ;
            return;
        }    

        //get info from query and cache locally in appropriate types
        do{
            parseAptFetchEntry(rs, aCon);
        }while( rs.next() );

        rs.close();
        aptFetchStatement.close ( ) ;
        }
        catch(SQLException e){
            System.err.println("SQL Exception thrown with prepared statement apt: " + e);
        }

        //PRINT the appointments for the user
        printAptMatch();

        return;
    }

    //a helper method for parsing database results into appropriate types
    //ADDS to apporpriate lists as well
    private void parseAptFetchEntry(ResultSet rs, Connection con) throws SQLException{
        
        //INITIALIZE values for constructing types 
        int cRowNum = 0;
        Pregnancy preg;
        Appointment apt;
        int cPregid = 0;
        String cBirthParentName = "";
        String cBirthParentHcardid = "";
        int cBirthParentPatid = 0;
        String cMRole = "";
        int cAptid = 0;
        Date cAptDate; 
        Time cAptTime; 

        //FETCH values for constructing types 
        cRowNum = rs.getRow(); //metadata
        cPregid = rs.getInt("pregid");
        cBirthParentName = rs.getString("name");
        cBirthParentHcardid = rs.getString("hcardid");
        cBirthParentPatid = rs.getInt("patid");
        cMRole = rs.getString("mRole");
        cAptid = rs.getInt("aptid");
        cAptDate = rs.getDate("date");
        cAptTime = rs.getTime("time");

        //CONSTRUCT PREGNANCY
        preg = new Pregnancy(cPregid, aMid, cBirthParentPatid, cMRole, cBirthParentName, cBirthParentHcardid, con);

        if( !aPregMatch.containsKey(cPregid) ) aPregMatch.put(cPregid, preg);

        //CONSTRUCT APPOINTMENT
        apt = new Appointment(cRowNum, cAptid, cAptDate, cAptTime, aMid, preg, con);
        aAptMatch.put(cRowNum, apt);
    }

    public void printAptMatch(){
        for(Integer rowKey : aAptMatch.keySet()){
            System.out.println(aAptMatch.get(rowKey));
        }
        System.out.println("Enter the appointment number that you would like to work on. \n [E] to exit [D] to go back to another date :");
    }

    public Appointment selectAppointment(int userRowSelection){
        Appointment selApt = aAptMatch.get(userRowSelection);
        aSelectedAppointment = selApt;
        printAppointmentActions();
        return aSelectedAppointment;
    }

    public void printAppointmentActions(){
        System.out.println( "\n For " + aSelectedAppointment.getPreg() ); 
        System.out.println(" 1. Review notes \n 2. Review tests \n 3. Add a note \n 4. Prescribe a test \n 5. Go back to the appointments. \n\n Enter your choice:");
    }
}
