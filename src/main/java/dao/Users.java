package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dbutil.DBConnection;
import pojo.UserPojo;

public class Users {
	
	private static PreparedStatement ps,ps1,ps2,ps3;
	
	static {
		try {
			ps = DBConnection.getConnection().prepareStatement("insert into users values(?,?,?,?)");
			ps1 = DBConnection.getConnection().prepareStatement("select username from users where userid=? and password=?");
			ps2 = DBConnection.getConnection().prepareStatement("update users set uuid=? where userid=?");
			ps3 = DBConnection.getConnection().prepareStatement("select userid,username,uuid from users where uuid=?");
		} catch(Exception e) {
			System.out.println(e);
		}
	}
	
	
	public static boolean insertUsers(UserPojo user) throws Exception {
		ps.setString(1, user.getUserid());
		ps.setString(2, user.getUsername());
		ps.setString(3, user.getPassword());
		ps.setString(4, user.getUserUUID());
		
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
	
	public static boolean updateUUID(String userUUID, String userid) throws Exception {
		ps2.setString(1, userUUID);
		ps2.setString(2, userid);
		
		return ps2.executeUpdate()>0;
	}
	
	public static UserPojo checkForCookies(String userUUID) throws Exception {
		ps3.setString(1, userUUID);
		
		ResultSet rs = ps3.executeQuery();
		UserPojo user = new UserPojo();
		while(rs.next()) {
			user.setUserid(rs.getString(1));
			user.setUsername(rs.getString(2));
			user.setUserUUID(rs.getString(3));
		}
		
		return user;
	}
	
}









