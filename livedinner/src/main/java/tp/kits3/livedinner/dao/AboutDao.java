package tp.kits3.livedinner.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

@Repository
public class AboutDao {
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
	public void insertEmail(String email) {
		SqlSession session = getInstance().openSession();
		System.out.println(email);
		session.insert("mappers.bookMapper.insertMail", email);
		session.commit();
		
	}


	
}
