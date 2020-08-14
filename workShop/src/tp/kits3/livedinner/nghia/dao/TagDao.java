package tp.kits3.livedinner.nghia.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import tp.kits3.livedinner.nghia.vo.Tag;

public class TagDao {
	private final String driver = "org.mariadb.jdbc.Driver";
	private final String url = "jdbc:mariadb://localhost:3306/livedinner";
	private final String id = "root";
	private final String pass = "root123";
	private Connection conn; // Usually use, shouldn't use final
	
	
//	public TagDao(String driver, String url) {
//		this.driver = driver;
//	}
	
	protected void connectionDB() {
		try {
			Class.forName(driver);
			this.conn = DriverManager.getConnection(url, id, pass);
		} catch (Exception e) {
			String message ="";
			message += TagDao.class.getSimpleName();
			message += ": connectDB()";
			System.out.println(message);
			e.printStackTrace(); // phuc tap
		}
	};
	public List<Tag> findAll() {
		// Connection
		connectionDB();
		
		// CRUD
		// request to DB
		Statement stmt = null;
		ResultSet rs = null;
		String sql_selectAll = "select * from tag";
		List<Tag> list = null;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql_selectAll);
			list = new ArrayList<Tag>();
			
			while (rs.next()) {
				Tag tag = new Tag();
				tag.setTagid(rs.getInt("tagid"));
				tag.setTgname(rs.getString("tgname"));
				list.add(tag);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
				try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
				try { stmt.close(); } catch (Exception e) { e.printStackTrace(); }
				try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
		}
		
		// return Servlet
		
		
		
		return list;
	}
	public void save(Tag tag) {
		connectionDB(); 
		Statement stmt = null;
		String sql_insert = "insert into tag(tgname) values('" +tag.getTgname() +"')";
		List<Tag> list = null;
		
		try {
			stmt = conn.createStatement();
			stmt.execute(sql_insert);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
				try { stmt.close(); } catch (Exception e) { e.printStackTrace(); }
				try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
		}
		
	}
	
	public void update(Tag tag) {
		if (tag.getTagid() == null || tag.getTagid() <= 0) {
			System.out.println("can invoke update stattement");
//			save(tag);
			return;
		}
		
		connectionDB(); 
		Statement stmt = null;
		String sql_update = "update tag set tgname = '" +tag.getTgname() +"'" + "where tagid = '" + tag.getTagid() + "'";
		List<Tag> list = null;
		
		try {
			stmt = conn.createStatement();
			stmt.execute(sql_update);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
				try { stmt.close(); } catch (Exception e) { e.printStackTrace(); }
				try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
		}
		
	}


}
