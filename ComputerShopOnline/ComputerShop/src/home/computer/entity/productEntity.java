package home.computer.entity;

public class productEntity {
	
	private int id;
	private int id_category;
	private String ProductName;
	private int UnitPrice;
	private int UnitInStock;
	
	public productEntity() {
		super();
	}

	public productEntity(int id, int id_category, String productName, int unitPrice, int unitInStock) {
		super();
		this.id = id;
		this.id_category = id_category;
		ProductName = productName;
		UnitPrice = unitPrice;
		UnitInStock = unitInStock;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_category() {
		return id_category;
	}

	public void setId_category(int id_category) {
		this.id_category = id_category;
	}

	public String getProductName() {
		return ProductName;
	}

	public void setProductName(String productName) {
		ProductName = productName;
	}

	public int getUnitPrice() {
		return UnitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		UnitPrice = unitPrice;
	}

	public int getUnitInStock() {
		return UnitInStock;
	}

	public void setUnitInStock(int unitInStock) {
		UnitInStock = unitInStock;
	}
	
	
	
	
	
}
