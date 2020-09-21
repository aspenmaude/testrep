package tp.kits3.open4um.dao;

import java.util.List;

import tp.kits3.open4um.dto.SourceDto;
import tp.kits3.open4um.vo.Source;

/*
 * author nguyenthai
 */
public interface SourceDao {
	public List<Source> ListSources();
	//Chi
	public void add(Source source);
	public List<SourceDto> selectBySourceWeb();
	public List<SourceDto> selectLimit(int pageNo);
	public List<SourceDto> selectBySourceGame();

	//author nguyenthai
	public List<Source> ListSourceNew();
	public int totalSource();
	public List<Source> ListMoreSource(int limit,int offset);
	public List<Source> ListSearchSource(String key);
	


	public Source showOne(int sourceid);
}
