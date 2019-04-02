package com.my.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import com.my.dao.CrmDao;
import com.my.model.RegisterModel;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		
		String fname= request.getParameter("fname");
		String lname= request.getParameter("lname");
		String uname= request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		String cpwd=request.getParameter("cpwd");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact") ;
		String address=request.getParameter("address") ;
		String date=request.getParameter("date") ;
		String state=request.getParameter("state");
		String gender=request.getParameter("gender");
		
		 RegisterModel obj= new RegisterModel();
		 obj.setFname(fname);
		 obj.setLname(lname);
		 obj.setUname(uname);
		 obj.setPwd(pwd);
		 obj.setCpwd(cpwd);
		 obj.setEmail(email);
		 obj.setContact(contact);
		 obj.setAddress(address);
		 obj.setDate(date);
         obj.setState(state);
		 obj.setGender(gender);
		 
		 String sql="update REGISTER set(fname,lname,uname,pwd,cpwd,email,contact,address,date,state,gender)=(?,?,?,?,?,?,?,?,?,?,?) where uname=?";
		 String msg=CrmDao.UpdateUserData(sql, obj, uname);
		 if(msg=="success")
		 {
			response.sendRedirect("UserHome.jsp");
		 }
		 else
		 {
			 response.sendRedirect("Update.jsp");
		 }
}
}