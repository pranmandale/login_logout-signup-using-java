package dao.org;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.util.org.DBUtil;

import dao.org.*;

public class UserDaoImpl implements UserDao{

	@Override
	public boolean isValidUser(String email, String password) {
		// TODO Auto-generated method stub
		
		String query = "SELECT * FROM users WHERE email = ? AND password = ?";
		
		try (Connection connection = DBUtil.getConnection()){
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			System.out.println("Query executed successfully");
			return resultSet.next();			
		} catch(SQLException e) {
			e.printStackTrace();
			return false;
			

		}
		
	}

	

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

}
