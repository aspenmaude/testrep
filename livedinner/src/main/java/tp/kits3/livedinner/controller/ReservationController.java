package tp.kits3.livedinner.controller;

import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tp.kits3.livedinner.model.Book;
import tp.kits3.livedinner.service.ReservationService;

@Controller
public class ReservationController {
	@Autowired
	ReservationService reservationSV;
	
	@RequestMapping(value = "reservation", method = RequestMethod.GET)
	public String reservation(Locale locale, Model model) {
		
		List<Book> list = reservationSV.selectAllSv();
		model.addAttribute("BookTable", list);
		return "reservation";
	}
	
	@RequestMapping(value = "reservation/insert", method = RequestMethod.POST)
	public String reservationInsert(@RequestParam("bkname") String bkname,
			@RequestParam("bkemail") String bkemail,
			@RequestParam("bkphone") String bkphone,
			@RequestParam("bktime") String bktime,
			@RequestParam("bknum") int bknum,
			@RequestParam("booking") String booking,
			@RequestParam("bkmemo") String bkmemo,
			Model model) {
		reservationSV.insertSV(bkname,bkemail,bkphone,bktime,bknum,booking,bkmemo);
		
		return "redirect:/reservation";
	}
  	
	@RequestMapping(value = "reservation/update", method = RequestMethod.POST)
	public String reservationUpdate(@RequestParam("bkid") int bkid,
			@RequestParam("bkname") String bkname,
			@RequestParam("bkemail") String bkemail,
			@RequestParam("bkphone") String bkphone,
			@RequestParam("bktime") String bktime,
			@RequestParam("bknum") int bknum,
			@RequestParam("booking") String booking,
			@RequestParam("bkmemo") String bkmemo,
			Model model) {
		reservationSV.updateSV(bkid,bkname,bkemail,bkphone,bktime,bknum,booking,bkmemo);
		
		return "redirect:/reservation";
	}
	
	@RequestMapping(value = "reservation/delete", method = RequestMethod.POST)
	public String reservationDelete(@RequestParam("bkid") int bkid,
			Model model) {
		reservationSV.deleteSV(bkid);
		
		return "redirect:/reservation";
	}
}
