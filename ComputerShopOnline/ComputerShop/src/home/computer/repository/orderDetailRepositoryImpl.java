package home.computer.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import home.computer.config.connectionFactory;
import home.computer.entity.orderDetailEntity;

public class orderDetailRepositoryImpl implements orderDetailRepository {
	
	Connection connection = null;
	PreparedStatement statement = null;
	ResultSet result = null;
	
	private Connection getConnection() throws SQLException {
		Connection conn;
		conn = connectionFactory.getInstance().getConnection();
		return conn;
	}
	
	@Override
	public void printRevenue() {
		List<orderDetailEntity> orderDetailLs = new ArrayList<orderDetailEntity>();
		
		try {
			String quereyString = "SELECT * FROM order_detail";
			connection = getConnection();
			statement = connection.prepareStatement(quereyString);
			result = statement.executeQuery();
			
			while (result.next()){
				orderDetailEntity orderDetail = new orderDetailEntity();
				orderDetail.setId_order(result.getString("id_order"));
				orderDetail.setId_product(result.getString("id_product"));
				orderDetail.setUnitPrice(result.getInt("UnitPrice"));
				orderDetail.setQuantity(result.getInt("Quantity"));
				
				orderDetailLs.add(orderDetail);
			}
			int revenue = 0;
			for (int i = 0; i < orderDetailLs.size();i++)
			{
				
				System.out.print("order: ");
				System.out.print(orderDetailLs.get(i).getId_order());
				System.out.print(" | product: ");
				System.out.print(orderDetailLs.get(i).getId_product());
				System.out.print(" | UnitPrice: ");
				System.out.print(orderDetailLs.get(i).getUnitPrice());
				System.out.print(" | Quantity: ");
				System.out.println(orderDetailLs.get(i).getQuantity());
				revenue = revenue + ( (orderDetailLs.get(i).getUnitPrice()) * ( orderDetailLs.get(i).getQuantity()) );
			}
			System.out.println("total revenue: " + revenue);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
