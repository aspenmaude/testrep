package home.computer.entity;

public class CustomerEntity {
	private int id;
	private int id_user;
	private String name;
	private String address;
	private int sdt;
	
	public CustomerEntity() {
		super();
	}

	public CustomerEntity(int id, int id_user, String name, String address, int sdt) {
		super();
		this.id = id;
		this.id_user = id_user;
		this.name = name;
		this.address = address;
		this.sdt = sdt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getSdt() {
		return sdt;
	}

	public void setSdt(int sdt) {
		this.sdt = sdt;
	}
	
	
	
	
}
