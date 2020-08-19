package tp.kits3.livedinner.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import tp.kits3.livedinner.dao.AboutDao;

@Service
public class AboutService {
	
	@Autowired
	AboutDao dao;

	public void addEmail(String email) {
		dao.insertEmail(email);
		
	}
	
	
}
