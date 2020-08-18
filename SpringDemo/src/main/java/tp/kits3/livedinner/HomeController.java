package tp.kits3.livedinner;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.kits3.livedinner.service.BookService;
import tp.kits3.livedinner.service.ModelService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	// Dependency injection : create  orther object in this class
	@Autowired
	
	private ModelService modelService;
	private BookService  bookService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("{}.", "HomeController:home"); // = System.out.println
		modelService.getModelData();
		
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String doPost(Locale locale, Model model) {
		logger.info("{}.", "HomeController:home"); // = System.out.println
		
		
		return "home";
	}
	
}
