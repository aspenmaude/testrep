package tp.kits3.open4um.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.kits3.open4um.service.UserService;
import tp.kits3.open4um.vo.User;
/**
 * 
 * @author Thong
 *
 */
@Controller
public class ProfileController {
	@Autowired
	private UserService userS;
	
	/**
	 * 
	 * @param Thong view profile
	 * @return
	 */
	@RequestMapping(value="/profile", method = RequestMethod.GET)
	private String reversation(Model model){
		model.addAttribute("editProfile", new User());
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("userName", userS.selectProfile(userS.selectOne(userDetails.getUsername()).getUserid()));
		return "users/profile";
	}
	/**
	 * 	
	 * @param Thong edit profile
	 * @return
	 */
	@RequestMapping(value = "/editprofile", method = RequestMethod.POST)
	private String book(@ModelAttribute("editProfile") User user, Model model) {
		userS.update(user);
		model.addAttribute("editProfile", new User());
		return "redirect:/profile";
	}
	
}
