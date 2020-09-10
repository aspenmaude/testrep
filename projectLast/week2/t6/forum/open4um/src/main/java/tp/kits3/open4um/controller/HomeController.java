package tp.kits3.open4um.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.kits3.open4um.service.UserModel;
import tp.kits3.open4um.vo.User;

/**
 * 
 * @author nguyenthai_thien
 *
 */
@Controller
public class HomeController {
	@Autowired
	private UserModel userModel;
	
	@RequestMapping(value= {"/home","/"},method = RequestMethod.GET)
	public String Index() {
		return "users/index";
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String postRegister(@ModelAttribute("addUser") User user,BindingResult rs, Model model) {
		model.addAttribute("name", user.getUsername());
		return "users/index";
	}
	
}
