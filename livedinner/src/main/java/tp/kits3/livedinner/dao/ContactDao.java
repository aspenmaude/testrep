package tp.kits3.livedinner.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import tp.kits3.livedinner.model.Contact;

@Repository
public class ContactDao {
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
	
	public void insertDao(Contact contact) {
		SqlSession session = getInstance().openSession();
		session.insert("mappers.contactMapper.insert", contact);
		session.commit();
		
	}

}
