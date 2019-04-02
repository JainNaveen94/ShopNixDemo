package com.my.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CheckAreaServlet
 */
public class CheckAreaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckAreaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Pincode=request.getParameter("Pincode");
		int pin=Integer.parseInt(Pincode);
		
		
		
		if(pin==110001||pin==110002||pin==110003||pin==110004||
				pin==110005||pin==110006||pin==110007||pin==110008||
				pin==110009||pin==110010||pin==110011||pin==110012||
				pin==110013||pin==110014||pin==110015||pin==110016||
				pin==110017||pin==110018||pin==110019||pin==110020)
		{
			String pincode="true";
			HttpSession session=request.getSession();
			  session.setAttribute("PIN", pincode);
			response.sendRedirect("PaymentMode.jsp?var=Delivery Is Avilable In Your Area Please Place Your Order To Continue" );
		}
		else
		{
			response.sendRedirect("PaymentMode.jsp?var=Delivery Is Not Avilable In Your Area" );
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
