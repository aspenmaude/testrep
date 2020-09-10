package tp.kits3.open4um.dao;

/**
 * @Author: Huu Nghia
 */
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.kits3.open4um.config.ConnectionFactory;
import tp.kits3.open4um.vo.Category;

@Repository
public class CategoryDAO {
	
	
	public List<Category> selectCategoryName() {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		return session.selectList("mappers.categoryMapper.selectCategoryname");
	}

}
