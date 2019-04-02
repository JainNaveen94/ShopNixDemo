package com.my.controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.my.dao.CrmDao;
import com.my.model.AdminLogInModel;

/**
 * Servlet implementation class AdminLoginServlet
 */
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		
		AdminLogInModel obj3 = new AdminLogInModel();
		obj3.setUname(uname);
		obj3.setPwd(pwd);
		
		String sql="select * from ADMINLOGIN where uname=? AND pwd=?";
		String msg=CrmDao.ValidateAdminLogIn(sql, obj3);
		if(msg.equals("success"))
		{
			response.sendRedirect("AdminHome.jsp");
		}
		else
		{
			response.sendRedirect("Admin.jsp?var=Invalid User or Password");
		}	
	}

}
