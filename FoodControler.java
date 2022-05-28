package com.foodstore.myservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foodstore.dao.FoodDao;
import com.foodstore.dao.impl.FoodDaoJDBCImpl;
import com.foodstore.pojo.Food;


@WebServlet("/do.foodoperation")
public class FoodControler extends HttpServlet 
{
	
	String action;
	
	int food_Id;
	String food_Name;
	double food_Price;
	
	Food food = null;
	FoodDao foodDao = new FoodDaoJDBCImpl();
	
	boolean flag;
	
	HttpSession session = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		resp.setContentType("text/html");
		PrintWriter pw = resp.getWriter();
		session = req.getSession();
		
		action = req.getParameter("action");
		if(action.equalsIgnoreCase("addfood"))
		{
			food_Name = req.getParameter("food_Name");
			food_Price = Double.parseDouble(req.getParameter("food_Price"));

			//create a food object with user data.
			food = new Food(food_Name,food_Price);
			
			try {
				flag = foodDao.add(food);
				
				if(flag)
				{
					req.setAttribute("smsg","food is Added");
				}
				else{
					req.setAttribute("emsg","food is not Added");
				}
				
				RequestDispatcher rd = req.getRequestDispatcher("addfood.jsp");
				rd.forward(req, resp);
				
			} catch (Exception e) {
				pw.print(e);
			}
		}
			

//			pw.print("<h2>Food Name:- "+food_Name+"</h2>");
//			pw.print("<h2>Food Price:- "+food_Price+"</h2>");
			
			else if (action != null && action.equalsIgnoreCase("updatefood"))
			{
				food_Id = Integer.parseInt(req.getParameter("food_Id"));
				food_Name = req.getParameter("food_Name");
				food_Price = Double.parseDouble(req.getParameter("food_Price"));

				// create a food object with user data.
				food = new Food(food_Id,food_Name, food_Price);
				
				try {
					flag = foodDao.update(food);
					if(flag)
					{
						List<Food> flist = foodDao.all();
						session.setAttribute("flist",flist);
						req.setAttribute("smsg",food_Name+" is update successfully.. ");
					}
					else 
					{
						req.setAttribute("emsg",food_Name+" is NOT update successfully.. ");	
					}
					req.getRequestDispatcher("foodlist.jsp").forward(req, resp);
					
				} catch (Exception e) {
					e.printStackTrace();
				}

			}

//			
			pw.close();
			
			
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		session = req.getSession();
		action = req.getParameter("action");
		
		if(action!=null && action.equalsIgnoreCase("showfoodlist"))
		{
			try {
				List<Food> flist = foodDao.all();
				session.setAttribute("flist", flist);
				//sendRedirect method of HttpServletResponse is used the new request to next resource.
				resp.sendRedirect("foodlist.jsp");
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
		}
		else if (action != null && action.equalsIgnoreCase("deletefood")) {
			food_Id = Integer.parseInt(req.getParameter("food_Id"));
			try {
				flag = foodDao.delete(food_Id);

				if (flag) {
					req.setAttribute("smsg", "Food is Deleted");
					List<Food> flist = foodDao.all();
					session.setAttribute("flist", flist);

				} else {

					req.setAttribute("emsg", "Food is Not Deleted");
				}
//				RequestDispatcher rd = req.getRequestDispatcher("foodlist.jsp");
//				rd.forward(req, resp);
				req.getRequestDispatcher("foodlist.jsp").forward(req, resp);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}