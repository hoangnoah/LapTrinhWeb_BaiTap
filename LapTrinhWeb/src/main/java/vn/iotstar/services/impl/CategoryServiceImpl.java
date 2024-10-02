package vn.iotstar.services.impl;

import java.io.File;
import java.util.List;

import vn.iotstar.dao.ICategoryDao;
import vn.iotstar.dao.impl.CategoryDao;
import vn.iotstar.models.Category;
import vn.iotstar.services.ICategoryService;

public class CategoryServiceImpl implements ICategoryService {
	public ICategoryDao categoryDao = new CategoryDao();

	@Override
	public void insert(Category category) {
		categoryDao.insert(category);
	}

	@Override
	public void update(Category category) {
		Category oldCate = categoryDao.findById(category.getCategoryid());
		oldCate.setCategoryname(category.getCategoryname());
		oldCate.setStatus(category.getStatus());
		if (category.getImages() != null) {
			String fileName = oldCate.getImages();
			final String dir = "D:\\upload";
			File file = new File(dir + "/category" + fileName);
			if (file.exists()) {
				file.delete();
			}
			oldCate.setImages(category.getImages());
		}

		categoryDao.update(oldCate);
	}

	@Override
	public void delete(int id) {
		Category cate = new Category();
		cate = categoryDao.findById(id);
		if(cate != null) {
			categoryDao.delete(id);
		}
	}

	@Override
	public Category findById(int id) {
		return categoryDao.findById(id);
	}

	@Override
	public List<Category> findByCategoryName(String name) {
		return categoryDao.findByCategoryName(name);
	}

	@Override
	public List<Category> findAll() {
		return categoryDao.findAll();
	}

}
