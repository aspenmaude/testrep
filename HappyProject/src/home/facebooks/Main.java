package home.facebooks;

import java.util.ArrayList;
import java.util.List;

import home.facebooks.entity.CustomerEntity;
import home.facebooks.repository.CustomerRepository;
import home.facebooks.repository.CustomerRepositoryImpl;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		CustomerRepository customerRepo = new CustomerRepositoryImpl();
		
		List<CustomerEntity> ls = new ArrayList();
		ls = customerRepo.findAll();
		
		for (int i =0; i < ls.size(); i++) {
			System.out.println(ls.get(i).getName());
		}
	}

}
