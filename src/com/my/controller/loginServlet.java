package com.my.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.my.dao.CrmDao;
import com.my.model.LoginModel;

/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generate
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("uname");
		 String pwd= request.getParameter("pwd");
		 
		 LoginModel obj = new LoginModel();
		  obj.setPwd(pwd);
		  obj.setUname(uname);
		     
		  String sql = "select  * from  REGISTER where uname=? AND pwd=?";
		  String msg;
		
		try
		{
			msg = CrmDao.ValidateUser(sql, obj);
		  if(msg.equals("success"))
		  {
			  HttpSession session=request.getSession();
			  session.setAttribute("UNAME", uname);
				 response.sendRedirect("UserHome.jsp");
			 }
			 else
				 
			 {
				 response.sendRedirect("login.jsp?var=invalid username and password" );
			 }
		} catch (Exception  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 }
		 
	
		  
		  
		  
	}


