package vn.iotstar.dao;

import java.util.List;

import vn.iotstar.models.Category;

public interface ICategoryDao {
	void insert(Category category);
	void update(Category category);
	void delete(int id);
	Category findById(int id);
	List<Category> findByCategoryName(String name);
	List<Category> findAll();	
}
