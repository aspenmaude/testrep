package tp.kits3.open4um.service;

/**
 *	@author Huu Nghia  
 */

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.dao.ProductDAO;
import tp.kits3.open4um.vo.Product;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO dao;
	
	public List<Product> selectAll() {
		List<Product> list = dao.selectAll();
		return list;
	}
	
	public List<Product> selectExciting() {
		List<Product> list = dao.selectExciting();
		return list;
	}	
}
