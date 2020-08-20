package tp.kits3.livedinner.service;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import tp.kits3.livedinner.dao.ReservationDao;
import tp.kits3.livedinner.model.Book;

@Service
public class ReservationService {

	@Autowired
	ReservationDao dao;
	
	public void insertSV(String bkname, String bkemail, String bkphone, String bktime, int bknum, String booking,
			String bkmemo) {
		
		Timestamp time = null;
		
		try {
			DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
			Date parsedate = dateformat.parse(bktime);
			time = new java.sql.Timestamp(parsedate.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		Book book = new Book();
		book.setBkname(bkname);
		book.setBkemail(bkemail);
		book.setBkphone(bkphone);
		book.setBktime(time);
		book.setBknum(bknum);
		book.setBooking(booking);
		book.setBkmemo(bkmemo);
		
		
		dao.insertDao(book);
		
	}

	public void updateSV(int bkid, String bkname, String bkemail, String bkphone, String bktime, int bknum,
			String booking, String bkmemo) {
		Timestamp time = null;
		
		try {
			DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
			Date parsedate = dateformat.parse(bktime);
			time = new java.sql.Timestamp(parsedate.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		Book book = new Book();
		book.setBkid(bkid);
		book.setBkname(bkname);
		book.setBkemail(bkemail);
		book.setBkphone(bkphone);
		book.setBktime(time);
		book.setBknum(bknum);
		book.setBooking(booking);
		book.setBkmemo(bkmemo);
		
		
		dao.updateDao(book);
		
	}

	public void deleteSV(int bkid) {
		dao.deleteDao(bkid);
		
	}

	public List<Book> selectAllSv() {
		List<Book> list = dao.selectAllDao();
		return list;
	}


	
}
