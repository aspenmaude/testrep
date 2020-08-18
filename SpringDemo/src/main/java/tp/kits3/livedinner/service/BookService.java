package tp.kits3.livedinner.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.livedinner.dao.bookDao;

@Service
public class BookService {
	@Autowired
	private bookDao dao;
}
