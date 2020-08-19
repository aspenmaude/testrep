package tp.kits3.livedinner.service;

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





}
