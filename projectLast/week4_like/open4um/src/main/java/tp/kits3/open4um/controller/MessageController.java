package tp.kits3.open4um.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tp.kits3.open4um.dto.MessageDto;
import tp.kits3.open4um.dto.MessageIndexDto;
import tp.kits3.open4um.service.MessageService;
import tp.kits3.open4um.service.UserService;
import tp.kits3.open4um.vo.Message;
/**
 * 
 * @author Thong
 *
 */
@Controller
public class MessageController {
	@Autowired
	private MessageService messageS;
	@Autowired
	private UserService userSevices;
	//jsonMessage Thong
	@RequestMapping(value="/thong", method = RequestMethod.GET)
	@ResponseBody
	public List<MessageDto> selectAll(){
		List<MessageDto> listdto = new ArrayList<MessageDto>();
			for(Message item: messageS.selectAll(1)) {
				MessageDto dto = new MessageDto();
				if(item.getSenduserid() ==1) {
					dto.setUsername(userSevices.selectProfile(item.getReceiveuserid()).getUsername());
				}
				else {
					dto.setUsername(userSevices.selectProfile(item.getSenduserid()).getUsername());
				}
				dto.setContent(item.getContent());
				dto.setDatemsg(item.getDatemsg());
				item.getMessid();
				System.out.println(item.getMessid());
				listdto.add(dto);	
			}		
			return listdto;
		}
		
	//ListMessage Thong
	@RequestMapping(value = "/chatting")
	public String chat() {         
		return "users/chatting";
	}
	
	@Autowired
	MessageService dao;
	
	@Autowired
	UserService userService;
	
	@Autowired
	MessageService messageService;
	
	@GetMapping("/api/message")
	@ResponseBody
	public List<MessageIndexDto> Message() {
		Map<Integer, Integer> map = new HashMap<>();
		List<Message> list = dao.selectMessage(1);
		for(Message item : list) {
			if(item.getSenduserid() == 1) {
				map.put(item.getReceiveuserid(), item.getMessid());
			} else {
				map.put(item.getSenduserid(), item.getMessid());
			}
		}
		
		Map<Integer, Integer> sortedByCount = map.entrySet()
                .stream()
                .sorted(Map.Entry.comparingByValue())
                .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue, (e1, e2) -> e1, LinkedHashMap::new));
		
		List<MessageIndexDto> result = new ArrayList<MessageIndexDto>();
		Set set = sortedByCount.keySet();
        for (Object key : set) {
            MessageIndexDto dto = new MessageIndexDto();
            dto.setMessid(map.get(key));
            dto.setSenduserid(Integer.parseInt(key.toString()));
            dto.setSendusername(userService.selectProfile(Integer.parseInt(key.toString())).getUsername());     
            dto.setContent(messageService.selectOne(map.get(key)).getContent());
            dto.setDatemsg(messageService.selectOne(map.get(key)).getDatemsg());
            result.add(dto);
        }
		return result;
	}
}
