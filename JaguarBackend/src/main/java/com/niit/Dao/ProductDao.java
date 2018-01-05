package com.niit.Dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao 
{
	public void insertProduct(Product product);
	public List<Product> retrieve();
	public Product findByPID(int pid);
	public List<Product> getProdByCatId(int cid);
}
