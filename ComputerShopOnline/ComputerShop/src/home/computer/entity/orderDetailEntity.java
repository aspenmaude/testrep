package home.computer.entity;

public class orderDetailEntity {
	private int id, UnitPrice, Quantity;
	private String id_order, id_product;
	
	public orderDetailEntity() {
		super();
	}

	public orderDetailEntity(int id, int unitPrice, int quantity, String id_order, String id_product) {
		super();
		this.id = id;
		UnitPrice = unitPrice;
		Quantity = quantity;
		this.id_order = id_order;
		this.id_product = id_product;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUnitPrice() {
		return UnitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		UnitPrice = unitPrice;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
	}

	public String getId_order() {
		return id_order;
	}

	public void setId_order(String id_order) {
		this.id_order = id_order;
	}

	public String getId_product() {
		return id_product;
	}

	public void setId_product(String id_product) {
		this.id_product = id_product;
	}
	
	
	
	
	
}
