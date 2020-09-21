package tp.kits3.open4um.daoimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.kits3.open4um.config.ConnectionFactory;
import tp.kits3.open4um.dao.SourceDao;
import tp.kits3.open4um.dto.SourceDto;
import tp.kits3.open4um.vo.Source;

/*
 * author nguyenthai
 */
@Repository
public class SourceImpl implements SourceDao {

	public List<Source> ListSources() {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		List<Source> listSource = session.selectList("mappers.sourceMapper.selectAll");
		session.commit();
		session.close();
		return listSource;
	}
	public void add(Source source) {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		session.insert("mappers.sourceMapper.insert", source);
		session.commit();
		session.close();
	}
	/*
	 * chi
	 */
	@Override
	public List<SourceDto> selectBySourceWeb() {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		return session.selectList("mappers.sourceMapper.selectBySourceWeb"); 
	}
	@Override
	public List<SourceDto> selectLimit(int pageNo) {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		return session.selectList("mappers.sourceMapper.selectLimit", pageNo); 
	}
	@Override
	public List<SourceDto> selectBySourceGame() {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		return session.selectList("mappers.sourceMapper.selectBySourceGame"); 
	}
	@Override

	public List<Source> ListSourceNew() {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		List<Source> listSource = session.selectList("mappers.sourceMapper.selectSourceNew");
		session.commit();
		session.close();
		return listSource;
	}
	@Override
	public int totalSource() {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		Source  source = session.selectOne("mappers.sourceMapper.selectTotalProduct");
		session.commit();
		session.close();
		return source.getTotalproduct();
	}
	@Override
	public List<Source> ListMoreSource(int limit, int offset) {
		// TODO Auto-generated method stub
		SqlSession session = ConnectionFactory.getInstance().openSession();
		Map<String, Integer> readMore = new HashMap<String, Integer>();
		readMore.put("limit", limit);
		readMore.put("offset", offset);
		List<Source> listSource = session.selectList("mappers.sourceMapper.selectSourceNewMore",readMore);
		session.commit();
		session.close();
		return listSource;
		 
	}
	@Override
	public List<Source> ListSearchSource(String key) {
		SqlSession session = ConnectionFactory.getInstance().openSession();		 
		List<Source> listSource = session.selectList("mappers.sourceMapper.selectSearchSource",key);
		session.commit();
		session.close();
		return listSource;
	}
	public Source showOne(int sourceid) {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		return session.selectOne("mappers.sourceMapper.selectOne", sourceid); 
	}


}
