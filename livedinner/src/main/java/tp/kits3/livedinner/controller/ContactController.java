package tp.kits3.livedinner.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	private static final Logger logger = LoggerFactory.getLogger(ContactController.class);
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Model model) {
		
		List<Contact> list = contactsv.selectAllSV();
		
		model.addAttribute("ContactTable", list);
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

		contactsv.insertSV(coname,priphone,email,address,unused,latitude);
		
		return "redirect:/contact";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateContact(@RequestParam("coid") int coid,
			@RequestParam("coname") String coname,
			@RequestParam("priphone") String priphone,
			@RequestParam("email") String email,
			@RequestParam("address") String address,
			@RequestParam("unused") boolean unused,
			@RequestParam("latitude") double latitude,
			Model model) {

		contactsv.updateSV(coid,coname,priphone,email,address,unused,latitude);
		
		return "redirect:/contact";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteContact(@RequestParam("coid") int coid,
			Model model) {

		contactsv.deleteSV(coid);
		return "redirect:/contact";
	}
	
}
