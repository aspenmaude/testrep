package tp.kits3.open4um.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.daoimpl.OrderHistoryImpl;
import tp.kits3.open4um.vo.OrderHistory;

@Service
public class OrderHistoryService {
	@Autowired
	private OrderHistoryImpl impl;
	

	public List<OrderHistory> selectOrderHistoryName() {
		List<OrderHistory> list3 = impl.selectOrderHistoryName();
		// TODO Auto-generated method stub
		return list3;
	}

}
