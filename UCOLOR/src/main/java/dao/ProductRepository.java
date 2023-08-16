package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance(){
		return instance;
	} 

	public ProductRepository() {
		Product product1 = new Product("P1234", "평일 1인", 60000);
		product1.setDescription("진행시간은 약 40분 ~ 45분 가량 소요됩니다.");
		product1.setPeopleNum(1);
		product1.setFilename("P1234.jpg");
		
		Product product2 = new Product("P1235", "평일 2인", 100000);
		product2.setDescription("진행시간은 약 1시간 10분 가량 소요됩니다.");
		product2.setPeopleNum(2);
		product2.setFilename("P1235.jpg");
		
		Product product3 = new Product("P1236", "평일 3인", 135000);
		product3.setDescription("진행시간은 약 1시간 30분 가량 소요됩니다.");
		product3.setPeopleNum(3);
		product3.setFilename("P1236.jpg");
		
		Product product4 = new Product("P1237", "주말 1인", 65000);
		product4.setDescription("진행시간은 약 1시간 10분 가량 소요됩니다.");
		product4.setPeopleNum(1);
		product4.setFilename("P1237.jpg");
		
		Product product5 = new Product("P1238", "주말 2인", 110000);
		product5.setDescription("진행시간은 약 1시간 10분 가량 소요됩니다.");
		product5.setPeopleNum(2);
		product5.setFilename("P1238.jpg");
		
		Product product6 = new Product("P1239", "주말 3인", 150000);
		product6.setDescription("진행시간은 약 1시간 30분 가량 소요됩니다.");
		product6.setPeopleNum(3);
		product6.setFilename("P1239.jpg");
		
		listOfProducts.add(product1);
		listOfProducts.add(product2);
		listOfProducts.add(product3);
		listOfProducts.add(product4);
		listOfProducts.add(product5);
		listOfProducts.add(product6);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
