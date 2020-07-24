package home.computer.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import home.computer.config.connectionFactory;
import home.computer.entity.productEntity;

public class productRepositoryImpl implements productRepository {
	Connection connection = null;
	PreparedStatement statement = null;
	ResultSet result = null;
	
	private Connection getConnection() throws SQLException {
		Connection conn = null;
		conn = connectionFactory.getInstance().getConnection();
		return conn;
	}
	
	@Override
	public void insert(productEntity pe) {
				try {
					
					String queryString = "INSERT INTO" + " product(id_category,ProductName,UnitPrice,UnitInStock) "
							+ " VALUES (?,?,?,?) ";
					connection = getConnection();
					
					statement = connection.prepareStatement(queryString);
					statement.setInt(1,pe.getId_category() );
					statement.setString(2,pe.getProductName() );
					statement.setInt(3,pe.getUnitPrice() );
					statement.setInt(4,pe.getUnitInStock() );
					statement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				finally {
					try {
						if(statement != null){
							statement.close();
						}
						if (connection != null) {
							connection.close();
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				System.out.println("insert success");
		
	}
	
	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}

}
