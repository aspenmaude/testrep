package tp.kits3.open4um.daoimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.kits3.open4um.config.ConnectionFactory;
import tp.kits3.open4um.dao.MessageDao;
import tp.kits3.open4um.vo.Message;

@Repository
public class MessageImpl implements MessageDao {
	public List<Message> selectAll(int id){
		SqlSession session = ConnectionFactory.getInstance().openSession();
		List<Message> list = session.selectList("mappers.messageMapper.selectAll", id);
		session.commit();
		session.close();
		return list;
	}

	@Override
	public List<Message> selectMessage(int id) {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		List<Message> list = session.selectList("mappers.messageMapper.selectMessage", id);
		session.commit();
		session.close();
		return list;
	}

	@Override
	public Message selectOne(int id) {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		Message list = session.selectOne("mappers.messageMapper.selectOne", id);
		session.commit();
		session.close();
		return list;
	}
}
