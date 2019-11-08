package dto;

import java.io.Serializable;

public class Product implements Serializable{
	private static final long serialVersionId = -4274700572038677000L;
	
	private String productId;
	private String pname;
	private Integer unitprice;
	private String description;
	private String manufacturer;
	private String category;
	private long unitsInStock;
	private String condition;
	
	public Product(){
		super();
	}
	
	public Product(String productId, String pname, Integer unitprice){
		this.productId = productId;
		this.pname = pname;
		this.unitprice = unitprice;
	}
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(Integer unitprice) {
		this.unitprice = unitprice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitsInStock() {
		return unitsInStock;
	}
	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public static long getSerialversionid() {
		return serialVersionId;
	}
}