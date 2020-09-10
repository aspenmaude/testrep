package tp.kits3.open4um.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.kits3.open4um.config.ConnectionFactory;
import tp.kits3.open4um.vo.User;


@Repository
public class UserDao {
	public void insertUser(User user) {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		session.insert("mappers.userMapper.insertUser", user);
		session.commit();
		session.close();
	}
	
}
