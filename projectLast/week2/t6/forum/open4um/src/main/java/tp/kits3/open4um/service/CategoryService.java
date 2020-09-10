package tp.kits3.open4um.service;
/**
 * @Author: Huu Nghia
 */

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.dao.CategoryDAO;
import tp.kits3.open4um.vo.Category;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryDAO dao;
	public List<Category> selectCategoryName() {
		List<Category> list = dao.selectCategoryName();
		return list;
	}

}
