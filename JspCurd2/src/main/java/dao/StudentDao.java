package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class StudentDao {
           public static Connection conn=null;
           public static final Connection getConn() {
        	   try {
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","mysql");
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return conn;
        	   
           }
}
