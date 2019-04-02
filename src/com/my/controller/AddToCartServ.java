package com.my.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddToCartServ
 */
public class AddToCartServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			HttpSession session =request.getSession();
			String itemid=(String)session.getAttribute("itemid");
		
		String price=(String)session.getAttribute("price");
		
		String uname=(String)session.getAttribute("uname");
		String qty=request.getParameter("qty");
		
		int quantity=Integer.parseInt(qty);
		int amount=Integer.parseInt(price);
		int billamt=quantity*amount;
		String bill=String.valueOf(billamt);
		

		  session.setAttribute("Amount", bill);
		  session.setAttribute("quantity", qty);
		  
			
		  String sql="insert into UPDATE(price ,itemid) values('"+price+"','"+itemid+"')";
		  
		response.sendRedirect("UserDetail.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}
	}
