package tp.kits3.open4um.controller;



import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import tp.kits3.open4um.service.CategoryService;
import tp.kits3.open4um.service.SourceService;
import tp.kits3.open4um.service.UserService;
import tp.kits3.open4um.vo.Source;
import tp.kits3.open4um.vo.User;




@SuppressWarnings("unused")
@Controller

public class UploadSourceController {
	@Autowired
	private SourceService sourceservice;
	@Autowired
	private CategoryService categoryservice; // new categoryservice()
	@Autowired
	private UserService userService; 
	
	
	@SuppressWarnings("deprecation")
	@RequestMapping(value ="/insertsource", method = RequestMethod.POST)
	public String insertSource(@RequestParam(value = "action", required = false) String action,
			
			@RequestParam(value="sourcename", required = true) String sourcename, 
			@RequestParam(value="ctgid", required = true) int ctgid,
			@RequestParam(value = "size", required = true) MultipartFile size, 
			@RequestParam(value="contentdetails", required = true) String contentdetails,
			@RequestParam(value="avatar", required = true) MultipartFile avatar, 
			@RequestParam(value="title", required = true) String title,	
			/* @RequestParam(value="ctgname", required = true) String ctgname, */
			@RequestParam(value="price", required = true) String price,
			HttpServletRequest request,  Model model)
			{
			
				if(action.equals("add")) {
					String date= LocalDateTime.now().toString(); 

					//System.out.print(date);	
//					category category = new category(ctgname);
//					categoryservice.insertCategory(category);
					
					if (size != null) {
						try {
							InputStream inputStream = size.getInputStream();				
							if (inputStream == null)
								System.out.println("File inputstream is null");
							//load img built path
						
							String path = "/kits-03-tpjk3n12/open4um/src/main/webapp/resources/upload/";
							System.out.println(path);
							FileUtils.forceMkdir(new File(path));
							File upload = new File (path + size.getOriginalFilename());
							size.transferTo(upload);
							IOUtils.closeQuietly(inputStream);
						} catch (IOException ex) {
							System.out.println("Error saving uploaded file");
						}
					
				
					}
					if (avatar != null) {
						try {
							InputStream inputStream = avatar.getInputStream();				
							if (inputStream == null)
								System.out.println("File inputstream is null");
							//load img built path
						
							String path = "/kits-03-tpjk3n12/open4um/src/main/webapp/resources/uploadimg/";
							System.out.println(path);
							FileUtils.forceMkdir(new File(path));
							File upload = new File (path + avatar.getOriginalFilename());
							System.out.println(avatar.getOriginalFilename());
							avatar.transferTo(upload);
							IOUtils.closeQuietly(inputStream);
						} catch (IOException ex) {
							System.out.println("Error saving uploaded file");
						}
					
				
					}
					int price1 = Integer.parseInt(price);
					//System.out.println("ID: "+category.getCtgid());
					Source source = new Source(date,sourcename,size.getOriginalFilename(),contentdetails,title,1,ctgid,price1,1,avatar.getOriginalFilename());
					sourceservice.add(source);
			
					
					return "users/index";
				}
				return "";
				
	}
//	@RequestMapping(value = "/insertsource/list", method = RequestMethod.GET)
//	public String showList(Model model) {
//		List<source> listSource = sourceservice.getAll();
//		model.addAttribute("listsource",listSource);
//		return "users/unsual";
//	}
//	@ResponseBody
//	public String downloadImg(HttpServletRequest request) {
//		Source source = (Source) request.getSession()
//				.getAttribute("source");
//		if (source != null)
//			return source.getAvatar();
//		else
//			return null;
//	}

	
	@RequestMapping(value="/showOne/{sourceid}", method=RequestMethod.GET)
	public String test1(@PathVariable int sourceid, Model model, Source source) {
		System.out.println(sourceid);
		Source source1 =  sourceservice.showOne(sourceid);
		
	
		model.addAttribute("listSourceOne",sourceservice.showOne(sourceid));
		return "users/showone";	
	}

}

	
	

	


