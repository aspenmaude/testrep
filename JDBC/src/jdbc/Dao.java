package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Dao {
	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	
	public Dao(){}
	
	private Connection getConnection() throws SQLException {
		Connection conn;
		conn = ConnectionFactory.getInstance().getConnection();
		return conn;
	}
	
	public void add(Dto dto) {
		try {
			String queryString = "INSERT INTO" + 
			" user(name,dprtmt_id,rank_id,reg_id,reg_date,updt_id,updt_date) " 
			+ "VALUES(?,?,?,?,now(),?,now())";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			ptmt.setString(1,dto.getName());
			ptmt.setString(2,dto.getDprtmt_id());
			ptmt.setString(3,dto.getRank_id());
			ptmt.setString(4,"1");
			ptmt.setString(5,"1");
			ptmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			try {
				if(ptmt != null){
					ptmt.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
				
		}
}

	
	public void update(Dto dto){
		try {
			String queryString = "update user set name=?" 
			+ "dprtmt_id=?" 
			+ "rak_id=? where id = ?";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			ptmt.setString(1,dto.getName());
			ptmt.setString(2,dto.getDprtmt_id());
			ptmt.setString(3,dto.getRank_id());
			ptmt.setString(4,dto.getId());
			ptmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		finally{
			try {
				if(ptmt != null){
					ptmt.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void delete(String id){
		try {
			String queryString = "delete from user where id=?";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			ptmt.setString(1, id);
			ptmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		finally{
			try {
				if(ptmt != null){
					ptmt.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public List<Dto> findAll() {
		
		try {
			String querString = "Select * from user";
			connection = getConnection();
			ptmt = connection.prepareStatement(querString);
			resultSet = ptmt.executeQuery();
			int i = 0;
			List<Dto> dtoList = new ArrayList<Dto>();
			while (resultSet.next()) {
				dtoList.get(i).setId(resultSet.getString("id"));
				dtoList.get(i).setName(resultSet.getString("name"));
				dtoList.get(i).setRank_id(resultSet.getString("rank_id"));
				
				System.out.println("id : " + resultSet.getString("id") + "name :" + resultSet.getString("name"));
			}
			return dtoList;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		finally{
			try {
				if (resultSet != null){
					resultSet.close();
				}
				if(ptmt != null){
					ptmt.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
		
	}
}

