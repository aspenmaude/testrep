package tp.kits3.open4um.controller;


/**
 * @author 응이아
 */

import java.io.File;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import tp.kits3.open4um.dto.UploadProductDto;
import tp.kits3.open4um.service.CommunityService;
import tp.kits3.open4um.service.UserService;

@Controller
public class CommunityController {
	@Autowired
	private UserService userService;
	@Autowired
	private CommunityService commnunitisv;
	
	@RequestMapping(value = "/forum/discuss/", method = RequestMethod.GET)
	public String Community(Model model) {
		model.addAttribute("myFile",new UploadProductDto());
		
		return "forum/disscuss";
	}
	@RequestMapping (value = "/insertPosts/", method = RequestMethod.POST)
	public String uploadFile(HttpServletRequest request,
							Model model, UploadProductDto uploadProduct,
							@RequestParam("inputimage") MultipartFile image,
							@RequestParam("title") int title,
							@RequestParam("textarea-frames") String content, HttpServletResponse response) {
		
		String date= LocalDateTime.now().toString();
		Timestamp datetime = Timestamp.valueOf(date);
		
		try {
			int stateid = 1;
			UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			int userid = userService.selectUser(userDetails.getUsername()).getUserid();
			MultipartFile multipartFile = image;
			String imagename = multipartFile.getOriginalFilename();
			uploadProduct.setImage("/resources/images/" + imagename);
			File file = new File("D:\\team1\\discuss\\open4um\\src\\main\\webapp\\resources\\images",imagename);
			multipartFile.transferTo(file);
			
			String images = "/resources/images/" + imagename;
			commnunitisv.insertPosts(title,datetime,content, images , userid,stateid);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

			return "redirect:/forum/discuss/";
			
	}
}
