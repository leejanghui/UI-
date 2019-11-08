package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository{
	
	private ArrayList<Product> listofproducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance(){
		return instance;
	}
	
	public void addproduct(Product product){
		listofproducts.add(product);
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i = 0;i < listofproducts.size(); i++){
			Product product = listofproducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)){
				productById = product;
				break;	
			}
		}
		return productById;
	}
	
	public ProductRepository(){
		Product phone = new Product("P1234", "iPhone", 800000);
		phone.setDescription("상세설명");
		phone.setCategory("Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(10);
		phone.setCondition("new");
		
		Product book = new Product("P12345", "book", 8000);
		book.setDescription("상세설명");
		book.setCategory("Book");
		book.setManufacturer("M");
		book.setUnitsInStock(100);
		book.setCondition("new");
		
		listofproducts.add(phone);
		listofproducts.add(book);
	}
	
	public ArrayList<Product> getAllProducts(){
		return listofproducts;
	}
}