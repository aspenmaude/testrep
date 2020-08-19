package tp.kits3.livedinner.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {

	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		
		
		return "menulist";
	}
}
