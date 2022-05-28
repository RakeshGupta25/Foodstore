package com.foodstore.pojo;

public class Food 
{
	int food_Id;
	private String food_Name;
	private double food_Price;
	
	
	//Constructor--(For empty object)
	public Food() {
	}
	
	// Constructor to create object without food_Id
	public Food(String food_Name, double food_Price) {
		
		this.food_Name = food_Name;
		this.food_Price = food_Price;
	}
	
	// Constructor to create object with food_Id
	public Food(int food_Id, String food_Name, double food_Price) {
		super();
		this.food_Id = food_Id;
		this.food_Name = food_Name;
		this.food_Price = food_Price;
	}
	
	

	public int getFood_Id() {
		return food_Id;
	}

	public void setFood_Id(int food_Id) {
		this.food_Id = food_Id;
	}

	public String getFood_Name() {
		return food_Name;
	}

	public void setFood_Name(String food_Name) {
		this.food_Name = food_Name;
	}

	public double getFood_Price() {
		return food_Price;
	}

	public void setFood_Price(double food_Price) {
		this.food_Price = food_Price;
	}

	@Override
	public String toString() {
		return "Food [food_Id=" + food_Id + ", food_Name=" + food_Name + ", food_Price=" + food_Price + "]";
	}
	
	
			
}