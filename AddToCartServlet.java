package com.foodstore.myservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foodstore.pojo.Cart;

@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet {
	
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		PrintWriter pw = resp.getWriter();
		
		ArrayList<Cart> cartList = new ArrayList<>();
		
		int id = Integer.parseInt(req.getParameter("id"));
		Cart cm = new Cart();
		cm.setId(id);
		cm.setQuantity(1);
		
		
		
		
		HttpSession session = req.getSession();
		ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");			
				
		
		if(cart_list == null)
		{
			cartList.add(cm);
			session.setAttribute("card-list", cartList);
			System.out.println("session created and added to the list");
			
		}
		else
		{
			cartList = cart_list;
			boolean exist= false;
			
			for(Cart c:cart_list)
			{
				if(c.getId()==id)
				{
					exist=true;
					System.out.println("product exist");
					
				}
				if(!exist)
				{
					cartList.add(cm);
					System.out.println("product Added");
					
				}
			}
		}
			
		pw.close();
	}

}

