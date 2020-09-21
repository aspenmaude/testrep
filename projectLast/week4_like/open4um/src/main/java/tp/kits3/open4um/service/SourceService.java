package tp.kits3.open4um.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.daoimpl.SourceImpl;
import tp.kits3.open4um.dto.SourceDto;
import tp.kits3.open4um.vo.Source;

/*
 * author nguyenthai
 */
@Service
public class SourceService {


	@Autowired
	private SourceImpl sourceImpl;

	public List<Source> ListSources() {
		return sourceImpl.ListSources();
	}

	public List<Source> ListSourceNew() {
		return sourceImpl.ListSourceNew();
	}

	// chi
	public void add(Source source) {
		sourceImpl.add(source);
	}

	public List<SourceDto> selectBySourceGame() {
		return sourceImpl.selectBySourceGame();
	}

	public List<SourceDto> selectBySourceWeb() {
		return sourceImpl.selectBySourceWeb();
	}

	public List<SourceDto> selectLimit(int pageNo) {
		return sourceImpl.selectLimit(pageNo);
	}

	public int selectTotalProduct() {
		int sumSource = sourceImpl.totalSource();
		int totalPages = (int)Math.ceil(sumSource / 6);
		return totalPages;
	}
	public List<Source> ListMoreSource(int limit,int offset ){
		return sourceImpl.ListMoreSource(limit, offset);
	}
	public List<Source> ListSearchSource(String key){
		return sourceImpl.ListSearchSource(key);
	}
	public Source showOne(int sourceid) {
		return sourceImpl.showOne(sourceid);
	}
}
