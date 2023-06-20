package com.DemoWebApp;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class NewConnection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	}
	   public boolean GetConnect(String username, String password){
			try {
				Class.forName("org.postgresql.Driver");
				try {
					Connection con  = DriverManager.getConnection("jdbc:postgresql://172.16.0.36:5432/ts_migration41",
					         "tspostgre", "tspostgre21");

					  String query = "SELECT * FROM users WHERE name = ?";
				      //Creating the PreparedStatement object
				      PreparedStatement pstmt = con.prepareStatement(query);
				      pstmt.setString(1, username);
				      ResultSet rs = pstmt.executeQuery();
				     
					if(rs.next()) {
						return true;
					}
				} catch (SQLException e) {
				}
			} catch (ClassNotFoundException e) {
			}
			return false;
		}
	   public Object GetData(String sql){
			try {
				Class.forName("org.postgresql.Driver");
				try {
					Connection con  = DriverManager.getConnection("jdbc:postgresql://172.16.0.36:5432/ts_migration41",
					         "tspostgre", "tspostgre21");

				      //Creating the PreparedStatement object
				     Statement pstmt = con.createStatement();
				      ResultSet rs = pstmt.executeQuery(sql);
				     
					if(rs.next()) {
						return rs;
					}
				} catch (SQLException e) {
				}
			} catch (ClassNotFoundException e) {
			}
			return null;
		}

}
