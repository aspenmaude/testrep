package home.computer;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import home.computer.repository.CustomerRepository;
import home.computer.repository.CustomerRepositoryImpl;
import home.computer.repository.productRepository;
import home.computer.repository.productRepositoryImpl;
import home.computer.entity.CustomerEntity;
import home.computer.entity.productEntity;

public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("Input product: idcategory, productname, UnitStock, UnitStock");
		int idcategory,UnitStock,UnitPrice;
		String productname;
		
		idcategory = sc.nextInt();
		productname = sc.next();
		UnitStock = sc.nextInt();
		UnitPrice = sc.nextInt();
		
		
		CustomerRepository customerRepo = new CustomerRepositoryImpl();
		productRepository productRepo = new productRepositoryImpl();
		productEntity productE = new productEntity();
		productE.setId_category(idcategory);
		productE.setProductName(productname);
		productE.setUnitInStock(UnitStock);
		productE.setUnitPrice(UnitPrice);
		
		productRepo.insert(productE);
				
		List<CustomerEntity> ls = new ArrayList();
		ls = customerRepo.findALL();
		
		for (int i =0; i < ls.size(); i++) {
			System.out.println(ls.get(i).getName());
		}
		
		
		

	}

}
