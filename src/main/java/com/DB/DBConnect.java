package com.DB;

import java.sql.DriverManager;
import java.sql.Connection;

public class DBConnect {

	private static Connection conn;
	public static Connection getConn() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook-app","root","capsule");

			
			
			
			
		}catch (Exception e) {
			  throw new RuntimeException("uncaught", e);

				
		}
		
		return conn;
		
		
		
		
		
	}
	
	
	
}
