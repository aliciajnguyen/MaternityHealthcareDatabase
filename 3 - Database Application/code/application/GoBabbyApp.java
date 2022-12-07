//package project3;

import project3.Midwife;
import project3.Appointment;
import project3.Pregnancy;


import java.sql.* ;

import javax.sound.midi.Track;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.*;

class GoBabbyApp
{

    public static void main ( String [ ] args ) throws SQLException {
        //INITIALIZATION
        //int userRowSelection = 0;
        //int userActionSelection = 0;
        int mid = 0;
        String dateApt = "";
        String query = "";
        Midwife mwife;
        //Appointment selectedApt;

        String userInput = "";
        BufferedReader reader = new BufferedReader( new InputStreamReader(System.in)); //KEYBOARD READ: read from keyboard, Enter data using BufferReader
        ResultSet rs;

        Connection con = connectDatabase();         //WAS Connection con = DriverManager.getConnection (url,your_userid,your_password) ;
        //Statement statement = con.createStatement ( ) ;
        query = "SELECT mid FROM Midwife WHERE mid = ?";
        PreparedStatement midwifeFetchStatement = con.prepareStatement(query);
        
        //PARSE USER INPUT TO CREATE MIDWIFE OBJECT
        while(!isExitCmd(userInput)){
          
          //CHECK PRAC ID VALID
          System.out.println("Please enter your midwife id or [E] to exit:");
          
          // Reading data using readLine
          userInput = parseUserInput(reader);
          if(isExitCmd(userInput)) break;            
          else mid = Integer.parseInt(userInput);


          midwifeFetchStatement.setInt(1, mid);
          rs = midwifeFetchStatement.executeQuery();
          if(!rs.next()){ //next() method and if next() returns false it means ResultSet is empty.
            //System.out.println("Midwife ID not valid. Enter your valid midwife id or [E] to exit:"); 
            System.out.println("Midwife ID not valid.");
            continue;
          }
          
          //create midwife object we'll operate on until new mid selected
          mwife = new Midwife(mid, con);
          
          //while(!isBackCmd(userInput) && !isExitCmd(userInput)){
          while(!isBackCmd(userInput) || !isExitCmd(userInput)){
            //Date input
            System.out.println("Please enter the date [YYYYMMDD] for appointment list [E] to exit:");
            userInput = parseUserInput(reader);
            if(isExitCmd(userInput)) break;
            dateApt = userInput;

            mwife.getAppointments(dateApt);
            userInput = viewAppointmentMatch(mwife, reader);
          }

      }

    // Relinquish resources: close reader, exception statement
    try{
      reader.close();
    }
    catch (IOException e){
      System.err.println("IO exception caught: " + e);
    }
    midwifeFetchStatement.close();
    //statement.close ( ) ;
    con.close ( ) ;    
    }


  //HELPER METHODS
  private static void userActionParse(int userActionSelection, Appointment selectedApt, BufferedReader reader){
    switch (userActionSelection){
      case 1: selectedApt.getPreg().reviewNotes();
      break;
      case 2: selectedApt.getPreg().reviewTests();
      break;
      case 3: 
      try{
        selectedApt.addNote(reader);
      }
      catch (IOException e){
        System.err.println("IO exception caught: " + e);
      }
        break;
      case 4:
      try{
        selectedApt.addTest(reader);
      }
      catch (IOException e){
        System.err.println("IO exception caught: " + e);
      }  
      break;
    }
  }

  private static String userSelectApt(Midwife mwife, BufferedReader reader){
    String userInput = "";
    int userRowSelection = 0;

     //select apt to work on
     userInput = parseUserInput(reader); //SELECT EITHER APT or exit/go back
     if(isBackCmd(userInput) || isExitCmd(userInput)) return userInput;//check input, could be D or E or Row here
     userRowSelection = Integer.parseInt(userInput); 

     mwife.selectAppointment(userRowSelection); //prints apt actions
     //System.out.println("end of Go Babby App: user sel apt");
     return userInput;
  }

  private static String userSelectAction(Midwife mwife, BufferedReader reader){
    String userInput = "";
    int userActionSelection = 0;

    //select action
    userInput = parseUserInput(reader);
    if(userInput.equals("5") ) return userInput;
    userActionSelection = Integer.parseInt(userInput);

    //perform selected action + print other actions avail  
    userActionParse(userActionSelection, mwife.getAptSelection(), reader);    
    mwife.printAppointmentActions();
    //System.out.println("end of Go Babby App: user sel action");
    return userInput;
  }

  private static String viewAppointmentMatch(Midwife mwife, BufferedReader reader){
    String userInput = "";
    
    while(!isBackCmd(userInput) && !isExitCmd(userInput)){
      //System.out.println("user sel action outter loop initiated");
      userInput = userSelectApt(mwife, reader);

      while(!userInput.equals("5") && !isBackCmd(userInput) && !isExitCmd(userInput)){
        //System.out.println("user sel action inner loop initiated");
        userInput = userSelectAction(mwife, reader);
      }
      if(!isBackCmd(userInput) && !isExitCmd(userInput)) mwife.printAptMatch();  
    }
    //System.out.println("end of Go Babby App: view Apt match");
    return userInput;
  }

  //method to retreive user input and catch IO exceptio
  private static String parseUserInput(BufferedReader reader){
    String userInput = "";
    try{
      userInput = reader.readLine();
    }
    catch (IOException e){
      System.err.println("IO exception caught: " + e);
    }
    return userInput;
  }

  //method that connects to database using environment variables
  public static Connection connectDatabase() throws SQLException{
    Connection con;

    // Register the driver.  You must register the driver before you can use it.
    try { DriverManager.registerDriver ( new com.ibm.db2.jcc.DB2Driver() ) ; }
    catch (Exception cnfe){ System.out.println("DB2 Driver Class not found"); }

    // This is the url you must use for DB2.
    //Note: This url may not valid now ! Check for the correct year and semester and server name.
    String url = "jdbc:db2://winter2022-comp421.cs.mcgill.ca:50000/cs421";

    //REMEMBER to remove your user id and password before submitting your code!!
    String your_userid = null;
    String your_password = null;
    //AS AN ALTERNATIVE, you can just set your password in the shell environment in the Unix (as shown below) and read it from there.
    //$  export SOCSPASSWD=yoursocspasswd 
    if(your_userid == null && (your_userid = System.getenv("SOCSUSER")) == null)
    {
      System.err.println("Error!! do not have a password to connect to the database!");
      System.exit(1);
    }
    if(your_password == null && (your_password = System.getenv("SOCSPASSWD")) == null)
    {
      System.err.println("Error!! do not have a password to connect to the database!");
      System.exit(1);
    }
    con = DriverManager.getConnection (url,your_userid,your_password) ;
    return con;
  }

  public static boolean isExitCmd(String s){
    return s.equals("E");
  }

  public static boolean isBackCmd(String s){
    return s.equals("D");
  }

}