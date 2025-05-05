package dao.util.org;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
	private static final String url = "jdbc:mysql://localhost:3306/";
	private static final String db = "Userdb";
	private static final String userName = "root";
	private static final String password = "Pranav@12345";
	
	static {
		try {
//			load the MySQL JDBC driver
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
//	55
	

	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url+db, userName, password);
	}

}
