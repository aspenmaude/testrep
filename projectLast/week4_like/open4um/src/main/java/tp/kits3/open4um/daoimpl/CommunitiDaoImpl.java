package tp.kits3.open4um.daoimpl;


/**
 * @author 응이아
 */

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.kits3.open4um.config.ConnectionFactory;
import tp.kits3.open4um.dao.CommunitiDAO;
import tp.kits3.open4um.dto.UploadProductDto;

@Repository
public class CommunitiDaoImpl implements CommunitiDAO{

	
	public void insertPosts(UploadProductDto uploadProdto) {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		session.insert("mappers.productMapper.insertUploadPosts",uploadProdto);
		session.commit();
		session.close();	
	}

}
