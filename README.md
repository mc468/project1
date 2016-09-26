# project1
package ob;

import java.sql.*;

public class JDBC {
	String ucid = "mc468";
	String url = "sql2.njit.edu";
	String password = "GJEhSofq";
//	String userName = "root";
//	String password = "root";
//	String url = "jdbc:mysql://localhost:3306/mydatabase";

	Connection conn;
	Statement stmt;  
	ResultSet rs;
	
	public JDBC(){
		stmt = null;
		rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://"+url+"/"+ucid+"?user="+ucid+"&password="+password);
			
		}catch (SQLException e) {
			System.out.println(e.toString());
		}catch (ClassNotFoundException e) {     
			System.out.println(e.toString());
		}
		
	}
	
	
	public boolean exeSql(String strSql) {
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate(strSql);
			return true;
		}catch(Exception e) {
			System.out.println(e.toString());
			return false;
		}
	}
	public ResultSet exeSqlQuery(String strSql) {
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strSql);
		}catch(Exception e) {
			System.out.println(e.toString());
			rs = null;
		}
		return rs;
	}

}

package ob;

import java.sql.ResultSet;

public class User extends JDBC{
	private int userID;
	private String userName;
	private String userPassword;
	private Double money;
	private String Info;
	private String strSql;
	public User() throws ClassNotFoundException {
		userID = 0;
		userName = "";
		userPassword = "";
		money = 0.0;
		Info = "";
		strSql = "";
	}
	
	public boolean addUser() {
		strSql = "insert into user";
		strSql = strSql + "(";   
		strSql = strSql + "name,";     
		strSql = strSql + "password,";
		strSql = strSql + "balance";
		strSql = strSql + ")";   
		strSql = strSql + " values(";    
		strSql = strSql + "'" + userName + "',";   
		strSql = strSql + "'" + userPassword + "',";   
		strSql = strSql + money;   
		strSql = strSql + ")";
		boolean isAdd = super.exeSql(strSql);   
		return isAdd;
	}
	
	public boolean addInfo() {
		strSql = "insert into Info";
		strSql = strSql + "(";
		strSql = strSql + "personal";   
		strSql = strSql + ")";   
		strSql = strSql + " values(";
		strSql = strSql + "'" + Info + "'";   
		strSql = strSql + ")";
		boolean isAdd = super.exeSql(strSql);   
		return isAdd;
	}
	
	public ResultSet ReadInfo() {
		strSql = "select * from user";
		ResultSet rs = null;
		
		try {
			rs = super.exeSqlQuery(strSql);
			return rs;
		}catch(Exception e) {
			System.out.println(e.toString());
			return rs;
		}
	}
	
	public boolean isExist() {
		strSql = "select * from user where name = '"+userName+"'";
		ResultSet rs = null;
		boolean isExist = false;
		try {
			rs = super.exeSqlQuery(strSql);
			while(rs.next()) {
				isExist = true;
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return isExist;
	}
	
	public boolean userValid() {
		strSql = "select * from user where name='" + userName + "' and password='" + userPassword + "'";
		ResultSet rs = null;
		boolean isValid = false;
		try {
			rs = super.exeSqlQuery(strSql);
			while(rs.next()) {
				this.userID = rs.getInt("id");
				isValid = true;
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return isValid;
	}
	
	public boolean init() {
		strSql = "select * from user where id=";
		strSql = strSql + userID;
		try {
			ResultSet rs = super.exeSqlQuery(strSql);
			if(rs.next()) {
				this.userID = rs.getInt("id");
				this.userName = rs.getString("name");
				this.userPassword = rs.getString("password");
				this.money = rs.getDouble("money");
				
				return true;
			}else {
				return false;
			}
		}catch(Exception e) {
			System.out.println(e.toString());
			return false;
		}
	}
	
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getInfo() {
		return Info;
	}
	public void setInfo(String Info) {
		this.Info = Info;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public Double getmoney() {
		return money;
	}
	public void setmoney(Double money) {
		this.money = money;
	}
	
	
	

}
