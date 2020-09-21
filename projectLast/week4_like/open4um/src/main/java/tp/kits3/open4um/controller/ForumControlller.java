package tp.kits3.open4um.controller;

/**
 * @author 응이아
 */
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tp.kits3.open4um.dto.CommentProductDto;
import tp.kits3.open4um.dto.InfoUserDto;
import tp.kits3.open4um.dto.PostDto;
import tp.kits3.open4um.service.CategoryService;
import tp.kits3.open4um.service.CommentService;
import tp.kits3.open4um.service.ProductService;
import tp.kits3.open4um.service.ReportService;
import tp.kits3.open4um.service.UserService;
import tp.kits3.open4um.vo.Category;
import tp.kits3.open4um.vo.Comment;
import tp.kits3.open4um.vo.Product;
import tp.kits3.open4um.vo.ReplyVO;
import tp.kits3.open4um.vo.User;


/**
 * 
 * @author Nguyen Vinh Thien
 *
 */

@Controller
public class ForumControlller{
	@Autowired
	private CategoryService categorysv;
	
	@Autowired
	private ProductService productsv;
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ReportService reportService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = "/forum/", method = RequestMethod.GET )
	public String forum(Model model)  { 	
		List<Category> list = categorysv.selectCategoryName();
		List<Product> listPro = productsv.selectAll();
		List<Product> listExc = productsv.selectExciting();

		model.addAttribute("listCategory", list);
		model.addAttribute("listProduct", listPro);
		model.addAttribute("listExciting", listExc);
				
		return "forum/index";
	}
	
	
	@GetMapping("/post/{proid}")
	public String postForum(@PathVariable(value="proid") int proid) {
		return "forum/post";
	}
	
	@PostMapping("/api/category")
	@ResponseBody
	public Category getCategory(@RequestBody String cateid) {
		return categoryService.selectOne(Integer.parseInt(cateid));
	}
	
	@PostMapping("/api/post")
	@ResponseBody
	public PostDto postForumAPI(@RequestBody String proid, HttpServletRequest request) {
		return productService.selectProduct(Integer.parseInt(proid));
	}
	
	@PostMapping("/api/likepost")
	@ResponseBody
	public Integer postLikeForum(@RequestBody String proid) {
		Product pr = productService.selectOne(Integer.parseInt(proid));
		pr.setLike(pr.getLike() + 1);
		productService.update(pr);
		return (pr.getLike());
		
	}
	
	@PostMapping("/api/post/comment")
	@ResponseBody
	public List<CommentProductDto> postCommentAPI(@RequestBody String proid) {
		System.out.println(commentService.selectCommentProduct(Integer.parseInt(proid)));
		return commentService.selectCommentProduct(Integer.parseInt(proid));
	}
	
	@PostMapping("/api/post/add-reply")
	@ResponseBody
	public List<CommentProductDto> addReply(@RequestBody ReplyVO reply) {
		Comment comment = new Comment(reply.getCmtname(), reply.getDatecmt(), reply.getUserid(), reply.getParent(), reply.getProductid());
		commentService.insert(comment);
		return commentService.selectCommentProduct(reply.getProductid());
	}
	
	@PostMapping("/api/post/add-comment")
	@ResponseBody
	public List<CommentProductDto> addComment(@RequestBody ReplyVO reply) {
		Comment comment = new Comment(reply.getCmtname(), reply.getDatecmt(), reply.getUserid(), reply.getProductid());
		commentService.insert(comment);
		return commentService.selectCommentProduct(reply.getProductid());
	}
	
	/* REPORT */
	
	@PostMapping("/api/report-comment")
	@ResponseBody
	public Comment ReportComment(@RequestBody String cmtid) {
		return commentService.selectReportComment(Integer.parseInt(cmtid));
	}
	
	@PostMapping("/api/report-product")
	@ResponseBody
	public Product ReportProduct(@RequestBody String cmtid) {
		return productService.selectOne(Integer.parseInt(cmtid));
	}
	
	@GetMapping("/report/{reportid}")
	public String reportPostForum(@PathVariable(value="reportid") int reportid) {
		return "forum/report";
	}
	
	@GetMapping("/report/{proid}/{reportid}")
	public String reportForum(@PathVariable(value="proid") int proid, @PathVariable(value="reportid") int reportid) {
		return "forum/report";
	}
	
	/* NAP */
	
	@Autowired
	UserService userService;
	
	@GetMapping("/nap")
	public String napTien() {
		return "forum/nap";
	}
	
	@PostMapping("/api/info-user")
	@ResponseBody
	public User AddReport(@RequestBody Integer id) {
		return userService.selectProfile(id);
	}
	
	@PostMapping("/api/info-user-post")
	@ResponseBody
	public InfoUserDto CountPost(@RequestBody int id) {
		int like = 0;
		for(Product item : productsv.countPost(id)) {
			like += item.getLike();
		}
		int post = productsv.countPost(id).size();
		InfoUserDto info = new InfoUserDto(post, like);
		return info;
	}
	
}
