package home.computer.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import home.computer.config.connectionFactory;
import home.computer.entity.CustomerEntity;

public class CustomerRepositoryImpl implements CustomerRepository {
	
	private Connection connection = null;
	private PreparedStatement statement = null;
	private ResultSet result = null;
	
	private Connection getConnection() throws SQLException {
		Connection conn = null;
		conn = connectionFactory.getInstance().getConnection();
		return conn;
	}
	
	
	
	@Override
	public List<CustomerEntity> findALL() {
		List<CustomerEntity> lsCustomner = new ArrayList();
		String queryString = "SELECT * FROM customer";
		
		try {
			connection = getConnection();
			statement = connection.prepareStatement(queryString);
			result = statement.executeQuery(); 
			
			while(result.next()) {
				CustomerEntity cus = new CustomerEntity();
				
				cus.setId(result.getInt(1));
				cus.setId_user(result.getInt(1));
				cus.setName(result.getString("name"));
				cus.setAddress(result.getString("address"));
				cus.setSdt(result.getInt(1));
				
				
				lsCustomner.add(cus);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (result != null) {
					result.close();
				}
			}
			catch (SQLException e) {
				System.out.println(e);
			}
		}
		return lsCustomner;
	}
}
	
	



