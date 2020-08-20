package tp.kits3.livedinner.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import tp.kits3.livedinner.model.Book;

@Repository
public class ReservationDao {
private static SqlSessionFactory factory = null;
	
	private static SqlSessionFactory getInstance() {
		if(factory == null) {
			try {
				Reader resource = Resources.getResourceAsReader("mybatis/mybatis-config.xml"); 
				factory = new SqlSessionFactoryBuilder().build(resource);
				resource.close(); 
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return factory;
	}

	public void insertDao(Book book) {
		SqlSession session = getInstance().openSession();
		session.insert("mappers.bookMapper.insert", book);
		session.commit();
		
	}

	public void updateDao(Book book) {
		SqlSession session = getInstance().openSession();
		session.update("mappers.bookMapper.update", book);
		session.commit();
		
	}

	public void deleteDao(int bkid) {
		SqlSession session = getInstance().openSession();
		session.delete("mappers.bookMapper.delete", bkid);
		session.commit();
		
	}

	public List<Book> selectAllDao() {
		SqlSession session = getInstance().openSession();
		return session.selectList("mappers.bookMapper.selectAll");
	}

}
