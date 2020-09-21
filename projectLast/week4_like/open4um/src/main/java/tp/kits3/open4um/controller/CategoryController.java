package tp.kits3.open4um.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author Ha Thi Bich Chi
 * */

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tp.kits3.open4um.service.CategoryService;
import tp.kits3.open4um.vo.Category;


@Controller
public class CategoryController {
	// Injection: create other object in this class
	@Autowired
	private CategoryService categoryservice; // ko cần new dể dùng nữ


	

	@RequestMapping(value = "/category1", method = RequestMethod.GET)
	public String indexPage(Model model) {
		// xuất lỗi
		// show category
		List<Category> listCategory = categoryservice.selectCategoryName();
		
		//List<category> listCate = categoryservice.getBycategory(parentid);
		model.addAttribute("listCategory", listCategory);
	
		return "users/uploadSource"; // .jsp
	}
	
//	CRUD - Nguyen Vinh Thien
	
	@RequestMapping(value = "/admin/category", method = RequestMethod.GET)
	public String indexCategory() {	
		return "users/category";
	}
	
	@GetMapping("/admin/category/add")
	public String indexAddCategory(Model model) {
		List<Category> list = categoryservice.selectParent();
		model.addAttribute("list", list);
		return "users/add-category";
	}
	
	@PostMapping("/admin/category/add")
	public String indexAddCategoryPost(Model model, @RequestParam(value = "ctgname") String ctgname, @RequestParam(value = "parentid") int parentid) {
		Category cate = new Category();
		cate.setCtgname(ctgname);
		
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
	    Date date = new Date();  
		
		cate.setCtgdate(formatter.format(date));
		cate.setParentid(parentid);
		categoryservice.insert(cate);
		List<Category> list = categoryservice.selectParent();
		model.addAttribute("list", list);
		return "redirect:/admin/category";
	}
	
	@PostMapping("/api/categoryAll")
	@ResponseBody
	public List<Category> getCategory() {
		return categoryservice.selectAllCategory();
	}
	
	@GetMapping("/admin/category/edit/{cateid}")
	public String indexEditCategory(Model model, @PathVariable(value = "cateid") int cateid) {
		Category cate = categoryservice.selectOne(cateid);
		
		List<Category> list = categoryservice.selectParent();
		
		model.addAttribute("list", list);
		model.addAttribute("cate", cate.getCtgname());
		model.addAttribute("ctgid", cate.getParentid());
		return "users/edit-category";
	}
	
	@PostMapping("/admin/category/edit/{cateid}")
	public String indexEditCategoryPost(Model model, @PathVariable(value = "cateid") int cateid, @RequestParam(value = "ctgname") String ctgname, @RequestParam(value = "parentid") int parentid) {
		Category cate = categoryservice.selectOne(cateid);
		cate.setCtgname(ctgname);
		
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
	    Date date = new Date();  
		
		cate.setCtgdate(formatter.format(date));
		cate.setParentid(parentid);
		categoryservice.update(cate);
		return "redirect:/admin/category";
	}
	
	@GetMapping("/admin/category/delete/{cateid}")
	public String indexDeleteCategory(Model model, @PathVariable(value = "cateid") int cateid) {
		Category cate = categoryservice.selectOne(cateid);
		model.addAttribute("cate", cate.getCtgname());
		model.addAttribute("ctgid", cate.getCtgid());
		return "users/delete-category";
	}
	
	@PostMapping("/admin/category/delete/{cateid}")
	public String indexDeleteCategoryPost(Model model, @PathVariable(value = "cateid") int cateid) {
		categoryservice.delete(cateid);
		return "redirect:/admin/category";
	}
}