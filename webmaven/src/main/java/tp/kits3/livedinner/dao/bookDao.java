package tp.kits3.livedinner.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import tp.kits3.livedinner.vo.book;

/*
 *1. Connection db (Java DataBase Connection API hay còn gọi là  (JDBC) =>Mysql/MariaDB Connector jar extend Driver implement JDBC API)
 * mariadb-client.jar
 *2. ask data to DB -> SQL API as Text ("select")
 *3. Statement/PreparedStatement: send -> get data
 *4. type is different Model and DB's type -> need converting
 *				DB -> ResultSet
 *				our type is Book
 *				convert ResultSet to Book
 *use mybatis lib
 *SQlSessionFactory <- connection info (mybatisconfig.xml) 
 *SQlSession open -> send sql statement DB (mapper.xml)
 *
 */
public class bookDao {
	private static SqlSessionFactory factory = null;
	
	// need static method to factory field
	
	public static SqlSessionFactory getInstance() {
		if (factory == null) {
			// create factory 
			try {
				Reader resource = Resources.getResourceAsReader("mybatis/mybatis-config.xml");	//text read from file xml
				factory = new SqlSessionFactoryBuilder().build(resource); 						// SqlSessionFactoryBuilder do SqlSessionFactory tạo nên
				// if open -> close
				resource.close(); // close file mybatis/mybatis-config.xml
				
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return factory;
	} // end factory
	
	public List<book> selectAll(){
		// connection db -> make sql -> send -> get data
		SqlSession session =  getInstance().openSession();									// your choice get return factory
		return session.selectList("mappers.bookMapper.selectAll");							// mappers,bookMapper.selectAll is package mapper
	}
	
	public book selectOne(int id){
		// connection db -> make sql -> send -> get data
		SqlSession session =  getInstance().openSession();									// your choice get return factory
		return session.selectOne("mappers.bookMapper.selectOne",id);							// mappers,bookMapper.selectAll is package mapper
	}
	
	public void insert(book param){
		// connection db -> make sql -> send -> get data
		SqlSession session =  getInstance().openSession();									// your choice get return factory
		session.insert("mappers.bookMapper.insert",param);							// mappers,bookMapper.selectAll is package mapper
	}
	
	public void update(book param){
		// connection db -> make sql -> send -> get data
		SqlSession session =  getInstance().openSession();									// your choice get return factory
		session.update("mappers.bookMapper.update",param);							// mappers,bookMapper.selectAll is package mapper
	}
	
	public void delete(int id){
		// connection db -> make sql -> send -> get data
		SqlSession session =  getInstance().openSession();									// your choice get return factory
		session.delete("mappers.bookMapper.delete",id);							// mappers,bookMapper.selectAll is package mapper
	}
	
	
	
}
