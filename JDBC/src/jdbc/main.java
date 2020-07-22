package jdbc;

public class main {

	public static void main(String[] args) {
		Dto dto = new Dto();
		dto.setName("qqqq");
		dto.setRank_id("2");
		
		Dao dao = new Dao();
		dao.add(dto);
		dao.findAll();
	}

}
