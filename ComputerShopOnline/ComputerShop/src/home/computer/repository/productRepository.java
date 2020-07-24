package home.computer.repository;

import home.computer.entity.productEntity;

public interface productRepository {
	void insert(productEntity pe);
	void update();
	void delete();
}
