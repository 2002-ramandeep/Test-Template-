package connection;

import java.sql.*;

public class Connect{
	private static String driver = "com.mysql.jdbc.Driver";
	private static String database = "jdbc:mysql://localhost:3306/mocktest";
	private static String root = "root";
	private static String password = "ramandeep";

	public static Connection getConnection(){
		try{
			Class.forName(driver);
    			Connection con = DriverManager.getConnection(database,root,password);
			return con;
		}
		catch(ClassNotFoundException | SQLException e){}
		return null;
	}
}