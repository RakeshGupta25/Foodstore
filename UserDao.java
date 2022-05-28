package com.foodstore.dao;

import java.util.List;

import com.foodstore.pojo.Food;
import com.foodstore.pojo.User;

public interface UserDao {
	
	boolean add(User user) throws Exception;
	boolean update(User user) throws Exception;
	List<User> all() throws Exception;
	boolean delete(int userId) throws Exception;
	User get(int userId) throws Exception;
	List<User> get(String fname ) throws Exception;
	List<User> get1(String lname ); 
	
	//Login operation	
	
	User isLogin(String uemail,String password)throws Exception;
	
	//boolean changepassword(String oldpassword,..);
	//boolean forgetpassword(String oldpassword,..);
	

}
