package vn.iotstar.services;

import java.util.List;

import vn.iotstar.models.Category;

public interface ICategoryService {
	void insert(Category category);
	void update(Category category);
	void delete(int id);
	Category findById(int id);
	List<Category> findByCategoryName(String name);
	List<Category> findAll();
}
