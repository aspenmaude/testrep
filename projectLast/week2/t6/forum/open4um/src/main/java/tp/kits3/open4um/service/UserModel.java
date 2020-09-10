package tp.kits3.open4um.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.dao.UserDao;
import tp.kits3.open4um.vo.User;

@Service
public class UserModel {
	@Autowired
	private UserDao dao;
	public void insertUser(User user) {
		dao.insertUser(user);
	}
}
