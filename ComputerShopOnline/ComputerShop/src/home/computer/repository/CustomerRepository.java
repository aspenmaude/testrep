package home.computer.repository;

import java.util.List;

import home.computer.entity.CustomerEntity;

public interface CustomerRepository {
	List<CustomerEntity> findALL();
	

}
