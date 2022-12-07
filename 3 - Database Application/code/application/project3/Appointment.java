package project3;

import java.sql.*;
import java.sql.Date;
import java.sql.Time;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.io.BufferedReader;
import java.io.IOException;
//import java.io.InputStreamReader;
//import java.nio.Buffer;

public class Appointment{
    private int aRowNum;
    private int aAptid;
    private Date aDate;
    private Time aTime; 
    private int aMid;
    private Pregnancy aPreg;
    private Connection aCon;
     
    Appointment(int pRowNum, int pAptid, Date pDate, Time pTime, int pMid, Pregnancy pPreg, Connection pCon){
        aRowNum = pRowNum;
        aAptid = pAptid;
        aDate = pDate;
        aTime = pTime;
        aMid = pMid;
        aPreg = pPreg;
        aCon = pCon;
        //System.out.println("Sucessfully created appointment.");
    }

    public int getAptid(){
        return aAptid;
    }

    public Pregnancy getPreg(){
        return aPreg;
    }

    //select info printed only
    public String toString(){
        String aptRow = aRowNum + ":\t" + aTime + "\t" + aPreg.getMRole() + "\t" + aPreg.getBParentName() + " " + aPreg.getParentHcardid();
        //String aptRow  = aRowNum + ":\t" + aDate;
        return aptRow;
    }

    private Time getTimeNow(){
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss");  
        LocalDateTime now = LocalDateTime.now();  
        String timeNow = dtf.format(now);
        //System.out.println("time determined to be: " + timeNow);  
        return Time.valueOf(timeNow);
    }

    private Date getDateNow(){
        long millis=System.currentTimeMillis();  
        java.sql.Date dateNow=new java.sql.Date(millis);  
        //System.out.println("date det to be: " + dateNow);  
        return dateNow;
    }


    public void addNote(BufferedReader reader) throws IOException{
        String userObs = "";
        int error = 0; 
        System.out.println("Please type your observation:");
        userObs = reader.readLine();

        //NOTE we're going to hash to get a noteid but USUALLY would be handled internally by auto generated identity column
        //though to implement this in the table creation of database would lose manual override capacity of individual toy record creation
        Time noteTime = getTimeNow();
        Date noteDate = getDateNow();       

        String aptid = Integer.toString(aAptid) + noteTime.toString() + noteDate.toString(); //get unique string
        aptid = (Integer.toString(aptid.hashCode())).substring(0, 8); //hash string, but then create substring for insert

        String query = "insert into AptNote (noteid, noteDate, noteTime, observations, aptid) "
        + "values (?, ?, ?, ?, ?)";

        //insert in database
        try{
            PreparedStatement insertNoteStatement = aCon.prepareStatement(query);
            insertNoteStatement.setInt(1, Integer.valueOf(aptid));
            insertNoteStatement.setDate(2, noteDate);
            insertNoteStatement.setTime(3, noteTime);
            insertNoteStatement.setString(4, userObs);
            insertNoteStatement.setInt(5, aAptid);
            error = insertNoteStatement.executeUpdate();
            if(error != 1) System.out.println("Error with insert of note.");

            insertNoteStatement.close ( ) ;
        }
        catch(SQLException e){
            System.err.println("SQL Exception thrown in Apt, addNote: ");
            System.out.println("Code: " + e.getErrorCode() + "  sqlState: " + e.getSQLState());
            System.out.println(e);
        }
    }

    
    public void addTest(BufferedReader reader) throws IOException{
        int error = 0; 
        System.out.println("Please enter type of test:");
        String userTestType = "";
        userTestType = reader.readLine();

        Date prescDate = getDateNow();

        //get testid in similar hashing method
        String testid = Integer.toString(aAptid) + prescDate.toString() + userTestType; //get unique string
        testid = (Integer.toString(testid.hashCode())).substring(0, 8); //hash string, but then create substring for insert

        String query = "insert into Test (testid, testType, sample, result, prescDate, dateSampleTaken, "
        + "dateLabWorkCompleted, pregid, techid, patid, mid) "
        + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        //insert in database
        try{

            PreparedStatement insertTestStatement = aCon.prepareStatement(query);
            insertTestStatement.setInt(1, Integer.valueOf(testid));
            insertTestStatement.setString(2, userTestType);
            insertTestStatement.setString(3, "a sample");
            insertTestStatement.setNull(4, Types.VARCHAR);
            insertTestStatement.setDate(5, prescDate);
            insertTestStatement.setDate(6, prescDate);
            insertTestStatement.setNull(7, Types.DATE);
            insertTestStatement.setInt(8, getPreg().getPregid());
            insertTestStatement.setNull(9, Types.INTEGER);
            insertTestStatement.setInt(10, getPreg().getBirthParentPatid()); 
            insertTestStatement.setInt(11, aMid);
            
            error = insertTestStatement.executeUpdate(); 
            if(error != 1) System.out.println("Error with prescription of test.");
            insertTestStatement.close ( ) ;
        }
        catch(SQLException e){
            System.err.println("SQL Exception thrown in Apt, addTest: ");
            System.out.println("Code: " + e.getErrorCode() + "  sqlState: " + e.getSQLState());
            System.out.println(e);
        }
    }

}
