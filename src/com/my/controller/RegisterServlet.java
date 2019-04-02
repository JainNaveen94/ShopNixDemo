package com.my.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.my.dao.CrmDao;
import com.my.model.RegisterModel;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
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
		 
		 
		 if(!pwd.equals(cpwd))
		 {
			 request.setAttribute("msg", "Password Should Be Same");
			 getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
			// response.sendRedirect("Register.jsp?var1=Password Should Be Same");
		 }
		 else
		 {
			 String sql1="select uname from Register where uname='"+uname+"'";
			 String v=CrmDao.ValidateUserName(sql1);
			 if(v.equals("fail"))
			 {
				 String sql="insert into REGISTER(fname,lname,uname, pwd,cpwd ,email,contact ,address,date,state,gender)values (?,?,?,?,?,?,?,?,?,?,?)";
				 System.out.println(sql);
				 String msg;
				 try {
					 	msg = CrmDao.insertUserData(sql, obj);
					 	System.out.println(msg);
					 	if(msg.equals("success"))
					 		{
					 		response.sendRedirect("login.jsp");
					 		System.out.println("welcome to login page ");
					 		}
					 	else
					 		{
						 response.sendRedirect("Register.jsp");
					 		} 
				 	 }
				 catch (Exception e) 
				 	 {
				 		 e.printStackTrace();
				 	 }
			 }
			 else
			 {
				// response.sendRedirect("Register.jsp?var1=Username already Exist");
				 request.setAttribute("msg", "User Already Exist");
				 getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
		 	 }
		 }
		/* else
		 {
			 
		 }*/
		 }
	}

