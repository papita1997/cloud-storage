package dao;

import java.sql.PreparedStatement;

import dbutil.DBConnection;
import pojo.UserPojo;

public class Users {
	
	private static PreparedStatement ps;
	
	static {
		try {
			ps = DBConnection.getConnection().prepareStatement("insert into users values(?,?,?)");
			
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
}
