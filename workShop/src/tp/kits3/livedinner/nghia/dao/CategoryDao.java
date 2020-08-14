package tp.kits3.livedinner.nghia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import tp.kits3.livedinner.nghia.vo.Category;

public class CategoryDao  {
	DataSource datasource;
	public CategoryDao() {
		try {
			Context ctx = new InitialContext();
			//get info of tomcat
			Context envCtx = (Context)ctx.lookup("java:/comp/env"); // search truyen thong tin den servlet container() servlet container
			// get context.xml
			this.datasource = (DataSource) envCtx.lookup("jdbc/mariadb");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Category> findAll() {
		List<Category> list = new ArrayList<Category>();
		try {
			Connection conn = this.datasource.getConnection();
			String selectAll = "select * from cateory";
			PreparedStatement  pstmt = conn.prepareStatement(selectAll);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Category category = new Category();
				category.setCtgid(rs.getInt("ctgid"));
				category.setCtname(rs.getString("ctname"));
				category.setService(rs.getString("service"));
				
				list.add(category);
			}
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		
		return list; // if .size() == 0 means empty list
	}

	public void save(Category category) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = datasource.getConnection();
			String insert = "insert into cateory(ctname,service) values(?,?)";
			pstmt = conn.prepareStatement(insert);
			pstmt.setString(1, category.getCtname());
			pstmt.setString(2, category.getService());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

	public Category findOne(int ctgid) {
		 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Category category = null;
		
		try {
			conn = datasource.getConnection();
			String selectOne = "select * from cateory where ctgid = ? ";
			pstmt = conn.prepareStatement(selectOne);
			pstmt.setInt(1, ctgid);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				category = new Category();
				category.setCtgid(rs.getInt("ctgid"));
				category.setCtname(rs.getString("ctname"));
				category.setService(rs.getString("service"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return category;
	}

	public void update(Category category) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = datasource.getConnection();
			String update = "update cateory set ctname=?, service =? where ctgid =?";
			pstmt = conn.prepareStatement(update);
			pstmt.setString(1, category.getCtname());
			pstmt.setString(2, category.getService());
			pstmt.setInt(3, category.getCtgid());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

}
