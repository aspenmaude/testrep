package tp.kits3.livedinner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.livedinner.dao.ContactDao;
import tp.kits3.livedinner.model.Contact;

@Service
public class ContactService {

	@Autowired
	private ContactDao dao;
	
	
	public void insertSV(String coname, String priphone, String email, String address, boolean unused,
			double latitude) {
		Contact contact = new Contact();
		contact.setConame(coname);
		contact.setPriphone(priphone);
		contact.setEmail(email);
		contact.setAddress(address);
		contact.setUnused(unused);
		contact.setLatitude(latitude);
		
		dao.insertDao(contact);
		
	}

	public void updateSV(int coid,String coname, String priphone, String email, String address, boolean unused,
			double latitude) {
		Contact contact = new Contact();
		contact.setCoid(coid);
		contact.setConame(coname);
		contact.setPriphone(priphone);
		contact.setEmail(email);
		contact.setAddress(address);
		contact.setUnused(unused);
		contact.setLatitude(latitude);
		
		dao.updateDao(contact);
		
	}

	public void deleteSV(int coid) {
		dao.delete(coid);
		
	}

	public List<Contact> selectAllSV() {
		List<Contact> list = dao.selectAllDao();
		return list;
		
	}





}
