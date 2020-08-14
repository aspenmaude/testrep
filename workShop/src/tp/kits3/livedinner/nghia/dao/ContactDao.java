package tp.kits3.livedinner.nghia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import tp.kits3.livedinner.nghia.vo.Category;
import tp.kits3.livedinner.nghia.vo.Contact;

public class ContactDao {
	
	DataSource dataSource;
	
	public ContactDao() {
		try {
			Context ctx = new InitialContext();
			Context envCtx = (Context)ctx.lookup("java:/comp/env");
			this.dataSource = (DataSource) envCtx.lookup("jdbc/mariadb");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	@SuppressWarnings("finally")
	public List<Contact> findAll() {
		List<Contact> list = new ArrayList<Contact>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = this.dataSource.getConnection();
			String sql_selectAll = "select * from contact";
			pstmt = conn.prepareStatement(sql_selectAll);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Contact contact = new Contact();
				contact.setCoid(rs.getInt("coid"));
				contact.setConame(rs.getString("coname"));
				contact.setPriphone(rs.getString("priphone"));
				contact.setSubphone(rs.getString("subphone"));
				contact.setEmail(rs.getString("email"));
				contact.setAddress(rs.getString("address"));
				contact.setUnused(rs.getBoolean("unused"));
				contact.setOpening(rs.getString("opening"));
				contact.setWeekday(rs.getString("weekday"));
				contact.setWeekend(rs.getString("weekend"));
				contact.setAboutus(rs.getString("aboutus"));
				contact.setLatitude(rs.getDouble("latitude"));
				contact.setLogitude(rs.getDouble("logitude"));
				list.add(contact);

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) {rs.close();}
				if (pstmt != null) {pstmt.close();}
				if (conn != null) {conn.close();}
			}
			catch (SQLException e) {
					e.printStackTrace();
				} 
		
		return list;
		}
	}
	public void save(Contact contact) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = this.dataSource.getConnection();
			String sql_insert = "insert into contact(coname,priphone,email,address,unused) values(?,?,?,?,?)";
			System.out.println(contact.toString());
			pstmt = conn.prepareStatement(sql_insert);
			pstmt.setString(1, contact.getConame());
			pstmt.setString(2, contact.getPriphone());
			pstmt.setString(3, contact.getEmail());
			pstmt.setString(4, contact.getAddress());
			pstmt.setBoolean(5, contact.getUnused());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null) {pstmt.close();}
				if (conn != null) {conn.close();}
			}
			catch (SQLException e) {
					e.printStackTrace();
				} 
		
		}
	}
	public Contact findOne(int coid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Contact contact = new Contact();
		try {
			conn = this.dataSource.getConnection();
			String selectOne = "select * from contact where coid = ? ";
			pstmt = conn.prepareStatement(selectOne);
			pstmt.setInt(1, coid);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				contact = new Contact();
				contact.setCoid(rs.getInt("coid"));
				contact.setConame(rs.getString("coname"));
				contact.setPriphone(rs.getString("priphone"));
				contact.setEmail(rs.getString("email"));
				contact.setAddress(rs.getString("address"));
				contact.setUnused(rs.getBoolean("unused"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null) {pstmt.close();}
				if (conn != null) {conn.close();}
			}
			catch (SQLException e) {
					e.printStackTrace();
				} 
		
		}
		
		return contact;
	}
}
