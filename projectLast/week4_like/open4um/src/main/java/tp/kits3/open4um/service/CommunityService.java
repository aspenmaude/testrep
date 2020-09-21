package tp.kits3.open4um.service;

import java.sql.Timestamp;

/**
 * @author 응이아
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.daoimpl.CommunitiDaoImpl;
import tp.kits3.open4um.dto.UploadProductDto;

@Service
public class CommunityService {

	@Autowired
	private CommunitiDaoImpl communitidaoimpl;
	public void insertPosts(int title, Timestamp datetime, String content, String images, int userid, int stateid) {
		UploadProductDto uploadProdto = new UploadProductDto();
		
	uploadProdto.setCtgid(title);
	uploadProdto.setDatepost(datetime);
	uploadProdto.setContent(content);
	uploadProdto.setImage(images);
	uploadProdto.setUserid(userid);
	uploadProdto.setStateid(stateid);
	
	communitidaoimpl.insertPosts(uploadProdto);
		
	}

}
