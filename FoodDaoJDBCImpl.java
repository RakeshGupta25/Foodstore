package com.foodstore.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.foodstore.dao.FoodDao;
import com.foodstore.pojo.Food;
import com.foodstore.utility.DBConnection;

public class FoodDaoJDBCImpl implements FoodDao
{
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	String sqlQuery = null;	

	
	public boolean add(Food food) throws Exception 
	{
		con = DBConnection.getDBCon();
		
		sqlQuery = "insert into food(food_Name,food_Price) values (?,?)";
		
		pstmt = con.prepareStatement(sqlQuery);
		
		pstmt.setString(1,food.getFood_Name());
		pstmt.setDouble(2,food.getFood_Price());
		
		int i = pstmt.executeUpdate();
		
		
		DBConnection.closeCon();
		if(i>0) {
			return true;
		}
		
		return false;
	}
	
	//--------------------------------------------------------------------------------------------------

	public boolean update(Food food) throws Exception {
		con = DBConnection.getDBCon();
		
		sqlQuery = "update food set food_Name=?,food_Price=? where food_Id=?";
		pstmt = con.prepareStatement(sqlQuery);
		pstmt.setString(1,food.getFood_Name());
		pstmt.setDouble(2, food.getFood_Price());
		pstmt.setInt(3,food.getFood_Id());
		int i = pstmt.executeUpdate();
		if (i>0) {
			return true;
		}
		DBConnection.closeCon();
		return false;
	}

	
	//--------------------------------------------------------------------------------------------------

	
	public List<Food> all() throws Exception {
		
		con = DBConnection.getDBCon();
		List<Food> flist = new ArrayList<Food>();
		
		sqlQuery="select * from food";
		pstmt = con.prepareStatement(sqlQuery);
		
		rs= pstmt.executeQuery();
		
		while(rs.next()) {
			Food food = new Food(rs.getInt(1),rs.getString(2),rs.getDouble(3));
			
			flist.add(food);
		}
		pstmt.close();
		rs.close();
		DBConnection.closeCon();
		
		return flist ;
	}
	//--------------------------------------------------------------------------------------------------

	public boolean delete(int food_Id) throws Exception {
		
		con = DBConnection.getDBCon();
		sqlQuery = " delete from food where food_Id=?";
		pstmt = con.prepareStatement(sqlQuery);
		pstmt.setInt(1, food_Id);
		int i = pstmt.executeUpdate();
		
		
		if(i>0) {
			return true;
		}
		DBConnection.closeCon();
		return false;

	}
	//--------------------------------------------------------------------------------------------------
	
	public Food get(int food_Id)throws Exception {
	
		con = DBConnection.getDBCon();
		sqlQuery = " select * From food Where food_Id=?";
		pstmt = con.prepareStatement(sqlQuery);
		pstmt.setInt(1, food_Id);
		
		rs = pstmt.executeQuery();
		while(rs.next()) {
			Food food = new Food(rs.getInt(1),rs.getString(2),rs.getDouble(3));
			return food;
		}
		DBConnection.closeCon();
		return null;
	
	}
	//--------------------------------------------------------------------------------------------------
	public List<Food> get(String food_Name) throws Exception {
		con = DBConnection.getDBCon();
		sqlQuery = "select * From food Where food_Name like ?";
		pstmt = con.prepareStatement(sqlQuery);
		pstmt.setString(1, food_Name+"%");
		
		rs = pstmt.executeQuery();
		List<Food> foodList = new ArrayList<Food>();
		
		while(rs.next()) {
			Food food = new Food(rs.getInt(1),rs.getString(2),rs.getDouble(3));
			foodList.add(food);
		} 
		
		DBConnection.closeCon();
		return foodList;
	}
	//--------------------------------------------------------------------------------------------------
	public List<Food> sortByPrice(boolean flag) throws Exception {
		con = DBConnection.getDBCon();
		sqlQuery = " select* from food order by food_Price  asc";
		pstmt = con.prepareStatement(sqlQuery);
		List<Food> foodList = new ArrayList<Food>();
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			Food food = new Food(rs.getInt(1),rs.getString(2),rs.getDouble(3));
			foodList.add(food);
		}
		DBConnection.closeCon();
		return foodList;
	}
	
	//--------------------------------------------------------------------------------------------------

	public List<Food> sortByName(boolean flag) throws Exception {
		con = DBConnection.getDBCon();
		if(flag== true) {
			sqlQuery = "select* from food order by food_Name  asc";
		}
		else {
			sqlQuery = "select* from food order by food_Name  desc";
		}
		pstmt = con.prepareStatement(sqlQuery);
		List<Food> foodList = new ArrayList<Food>();
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			Food food = new Food(rs.getInt(1),rs.getString(2),rs.getDouble(3));
			foodList.add(food);
		}
		DBConnection.closeCon();
		
		return foodList;	
	}

}