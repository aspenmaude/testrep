package tp.kits3.livedinner.nghia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import tp.kits3.livedinner.nghia.vo.Contact;
import tp.kits3.livedinner.nghia.vo.Menu;

public class MenuDao {
DataSource dataSource;
	
	public MenuDao() {
		try {
			Context ctx = new InitialContext();
			Context envCtx = (Context)ctx.lookup("java:/comp/env");
			this.dataSource = (DataSource) envCtx.lookup("jdbc/mariadb");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public List<Menu> findAll() {
		List<Menu> list = new ArrayList<Menu>();
		try {
			Connection conn = dataSource.getConnection();
			String selectAll = "select * from menu";
			PreparedStatement ptmt = conn.prepareStatement(selectAll);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
				Menu menu = new Menu();
				menu.setMuid(rs.getInt("muid"));
				menu.setCtgid(rs.getInt("ctgid"));
				menu.setMuname(rs.getString("muname"));
				menu.setIntro(rs.getString("intro"));
				menu.setDetails(rs.getString("details"));
				menu.setPrice(rs.getDouble("price"));
				menu.setCurrency(rs.getString("currency"));
				list.add(menu);
			}
			rs.close();
			ptmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}

