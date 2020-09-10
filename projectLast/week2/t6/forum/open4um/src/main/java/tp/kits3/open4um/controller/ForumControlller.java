package tp.kits3.open4um.controller;

/**
 * @Author: Huu Nghia
 */
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.kits3.open4um.service.CategoryService;
import tp.kits3.open4um.service.ProductService;
import tp.kits3.open4um.vo.Category;
import tp.kits3.open4um.vo.Product;


@Controller
public class ForumControlller{
	
//	int hitCount;
//	
//	public void init() {
//		hitCount = 1;
//	}
	
	
	@Autowired
	private CategoryService categorysv;
	@Autowired
	private ProductService productsv;
	
	@RequestMapping(value = "/forum/", method = RequestMethod.GET )
	public String forum(Model model, Model model1, Model model2)  { //, HttpServletRequest req, HttpServletResponse resthrows IOException {
		
//		PrintWriter out = res.getWriter();
//		hitCount++;
//		
//		System.out.println(hitCount + "aaaaa");
//		for (int i = 0; i < listPro.size(); i++)
//		{
//			int view = listPro.get(i).getViews();
//		}
		
		List<Category> list = categorysv.selectCategoryName();
		
		List<Product> listPro = productsv.selectAll();
		
		List<Product> listExc = productsv.selectExciting();
		model.addAttribute("listCategory", list);
		model1.addAttribute("listProduct", listPro);
		model2.addAttribute("listExciting", listExc);
		return "forum/index";
	}
}
