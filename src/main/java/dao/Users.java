package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbutil.DBConnection;
import pojo.UserPojo;

public class Users {
	
	private static PreparedStatement ps,ps1;
	
	static {
		try {
			ps = DBConnection.getConnection().prepareStatement("insert into users values(?,?,?)");
			ps1 = DBConnection.getConnection().prepareStatement("select username from users where userid=? and password=?");
			
		} catch(Exception e) {
			System.out.println(e);
		}
	}
	
	
	public static boolean insertUsers(UserPojo user) throws Exception {
		ps.setString(1, user.getUserid());
		ps.setString(2, user.getUsername());
		ps.setString(3, user.getPassword());
		
		return ps.executeUpdate()>0;
	}
	
	public static String loginUser(UserPojo user) throws Exception {
		ps1.setString(1, user.getUserid());
		ps1.setString(2, user.getPassword());
		
		ResultSet rs = ps1.executeQuery();
		
		String username = "";
		if(rs.next()) {
			username = rs.getString(1);
		}
		
		return username;
	}
	
}
