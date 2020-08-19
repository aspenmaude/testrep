package tp.kits3.livedinner.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tp.kits3.livedinner.model.Contact;
import tp.kits3.livedinner.service.ContactService;

@Controller
public class ContactController {
	
	@Autowired
	private ContactService contactsv;
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {
		
		return "contact";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insertContact(@RequestParam("coname") String coname,
			@RequestParam("priphone") String priphone,
			@RequestParam("email") String email,
			@RequestParam("address") String address,
			@RequestParam("unused") boolean unused,
			@RequestParam("latitude") double latitude,
			Model model) {

		System.out.println(coname+priphone+email+address+unused+latitude + "a");
		contactsv.insertSV(coname,priphone,email,address,unused,latitude);
		
		return "contact";
	}
}
