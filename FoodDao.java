package com.foodstore.dao;

import java.util.List;

import com.foodstore.pojo.Food;

public interface FoodDao {
	
	boolean add(Food food) throws Exception;
	boolean update(Food food)throws Exception;
	List<Food> all() throws Exception;
	boolean delete(int food_Id) throws Exception;
	Food get(int food_Id) throws Exception;
	List<Food> get(String food_Name) throws Exception;
	List<Food> sortByPrice(boolean flag) throws Exception;
	List<Food> sortByName(boolean flag) throws Exception;

}
