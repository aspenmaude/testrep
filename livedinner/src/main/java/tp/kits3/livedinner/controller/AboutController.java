package tp.kits3.livedinner.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tp.kits3.livedinner.model.Book;
import tp.kits3.livedinner.service.AboutService;

@Controller
public class AboutController {
	
	private static final Logger logger = LoggerFactory.getLogger(AboutController.class);
	
	@Autowired
	private AboutService aboutservice;
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model) {

		return "about";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String aboutadd(@RequestParam("EMAIL") String email,Model model) {
		
		System.out.println(email);
		aboutservice.addEmail(email);
		
		return "about";
	}
	
	

}
