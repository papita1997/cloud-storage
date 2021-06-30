
package dbutil;

import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static Connection Conn;
    static private String COMPUTER_NAME;
    static private String PASSWORD;
    final static private String USERNAME="root";
    private static final String DB_NAME="cloudstorage";
    private final static int LOCALHOST = 3306;
    static 
    {
        try
        {
            InetAddress adres=InetAddress.getLocalHost();
            COMPUTER_NAME=adres.getHostName();
            System.out.println(COMPUTER_NAME);
            if(COMPUTER_NAME.equalsIgnoreCase("pop-os")){
                PASSWORD="pawan";
            }
            else{
                PASSWORD="";
            }
           Class.forName("com.mysql.cj.jdbc.Driver");
           Conn=DriverManager.getConnection("jdbc:mysql://localhost:"+LOCALHOST+"/"+DB_NAME+"?useSSL=false&autoReconnect=true",USERNAME,PASSWORD);
            System.out.println("Connection openend!");
            
        }
         catch(ClassNotFoundException cnfe)
        {
            cnfe.printStackTrace();
        }
         catch(Exception sqlex)
        {
            sqlex.printStackTrace();
        }
    }
    
    
   public static Connection getConnection() {
       return Conn;
   }


   public static void closeConnection(){
     try
     {          
        if(Conn!=null)
        Conn.close();
        System.out.println("Connection closed");
               
     }
    catch(SQLException e)
    {
        e.printStackTrace(); 
    }
   }
}
