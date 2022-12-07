package project3;

import java.sql.*;

public class Pregnancy{
    private int aPregid;
    private int aMid;
    private int aBirthParentPatid;
    private String aMidwifeRole;
    private String aBirthParentName;
    private String aBirthParentHcardid;
    private Connection aCon;

    Pregnancy(int pPregid, int pMid, int pBirthParentPatid, String pMidwifeRole, String pBirthParentName, String pBirthParentHcardid, Connection pCon){
        aMidwifeRole = pMidwifeRole;
        aMid = pMid;
        aPregid = pPregid;
        aBirthParentPatid = pBirthParentPatid;
        aBirthParentName = pBirthParentName;
        aBirthParentHcardid = pBirthParentHcardid;
        aCon = pCon;
    }

    public int getPregid(){
        return aPregid;
    }

    public String getMRole(){
        return aMidwifeRole;
    }
    
    public String getBParentName(){
        return aBirthParentName;
    }

    public String getParentHcardid(){
        return aBirthParentHcardid;
    }

    public int getBirthParentPatid(){
        return aBirthParentPatid;
    }

    public String toString(){
        String pregString = "[" + aBirthParentName + " " + aBirthParentHcardid + "]";
        return pregString;
    }

    public void reviewNotes(){
        System.out.println("\nReview notes selected:");

        try{
            String query = "SELECT N.noteDate, N.noteTime, observations AS observations, A.pregid"
            +" FROM AptNote N, Appointment A "
            +" WHERE N.aptid = A.aptid AND A.mid = ? AND A.pregid = ? "
            +" ORDER BY noteDate DESC, noteTime DESC";
            PreparedStatement revNotesFetchStatement = aCon.prepareStatement(query);
            revNotesFetchStatement.setInt(1, aMid);
            revNotesFetchStatement.setInt(2, aPregid);
            ResultSet rs = revNotesFetchStatement.executeQuery();   
            
            if(!rs.next()){ 
                rs.close();
                revNotesFetchStatement.close ( ) ;
                System.out.println("No notes found.");
                return;
            }    
    
            do{
                System.out.print("\n" + rs.getDate("noteDate") + " "); 
                System.out.print(rs.getTime("noteTime") + " "); 
                System.out.print(rs.getString("observations") ); 
            }while( rs.next() );
    
            rs.close();
            revNotesFetchStatement.close ( ) ;
        }
        catch(SQLException e){
            System.err.println("SQL Exception thrown in Pregnancy, reviewNotes: ");
            System.out.println("Code: " + e.getErrorCode() + "  sqlState: " + e.getSQLState());
            System.out.println(e);
        }
    }

    public void reviewTests(){
        System.out.println("\nReview tests selected:");

        try{
            String query = "SELECT prescDate, testType, SUBSTRING(result, 0, 40) AS result"
            +" FROM Test T "
            +" WHERE mid = ? AND pregid = ?"
            +" ORDER BY prescDate DESC";
            PreparedStatement revTestsFetchStatement = aCon.prepareStatement(query);
            revTestsFetchStatement.setInt(1, aMid);
            revTestsFetchStatement.setInt(2, aPregid);
            ResultSet rs = revTestsFetchStatement.executeQuery();

            if(!rs.next()){ 
                rs.close();
                revTestsFetchStatement.close ( ) ;
                System.out.println("No tests found.");
                return;
            }    
    
            do{
                System.out.print("\n" + rs.getDate("prescDate") + " "); 
                System.out.print("[" + rs.getString("testType") + "] "); 
                //if col value sql null returns null
                String result = rs.getString("result"); 
                if(result == null)  System.out.print("PENDING"); 
                else System.out.print( rs.getString("result") ); 
            }while( rs.next() );
    
            rs.close();
            revTestsFetchStatement.close ( ) ;
        }
        catch(SQLException e){
            System.err.println("SQL Exception thrown in Pregnancy, reviewTests: ");
            System.out.println("Code: " + e.getErrorCode() + "  sqlState: " + e.getSQLState());
            System.out.println(e);
        }
    }

}
