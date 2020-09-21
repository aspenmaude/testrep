package tp.kits3.open4um.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tp.kits3.open4um.dto.Upload;
import tp.kits3.open4um.service.UploadService;
import tp.kits3.open4um.service.UserService;
/**
 * 
 * @author Thong
 *
 */

@Controller
public class UploadController {
	@Autowired
	private UploadService uploadS;
	@Autowired
	private UserService userS;
	/**
	 * 
	 * @param Thong list upload
	 * @return
	 */
	@RequestMapping(value="/upload", method = RequestMethod.GET)
		public String upload(Model model) {
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		List<Upload> list = uploadS.selectUpload(userS.selectOne(userDetails.getUsername()).getUserid());
		model.addAttribute("uplist", list);
		return "users/upload";
	}
	/**
	 * 
	 * @param Thong search upload
	 * @return
	 */
	@RequestMapping(value="/search-upload", method = RequestMethod.GET )
	public String searchUpload(Model model, @RequestParam("freeText") String freeText) {
		List<Upload> list = uploadS.selectSearch(1, freeText );
		model.addAttribute("uplist", list);
		return "users/upload";
	}
	
}
