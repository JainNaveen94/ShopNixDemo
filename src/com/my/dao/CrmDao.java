package com.my.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.my.model.AdminLogInModel;
import com.my.model.LoginModel;
import com.my.model.RegisterModel;

public class CrmDao {

	public static String username="Shubham";
	public static String password="1234";
	public static String driver="com.ibm.db2.jcc.DB2Driver";
	public static String url="jdbc:db2://localhost:50000/NETMALL";
	
	public static Connection con=null;
	public static PreparedStatement ps=null;
	public static ResultSet rs=null;
	
	
	static
	{
		try
		{
			Class.forName(driver);
			con=DriverManager.getConnection(url, username, password);
			System.out.println("connection successfull storenix ");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static String insertUserData(String sql, RegisterModel obj) throws InterruptedException 
	{
		try
		{
			ps=con.prepareStatement(sql);
		
			ps.setString(1,obj.getFname());
			ps.setString(2,obj.getLname());
			ps.setString(3,obj.getUname());
			ps.setString(4,obj.getPwd());
			ps.setString(5,obj.getCpwd());
			ps.setString(6,obj.getEmail());
			ps.setString(7,obj.getContact());
			ps.setString(8,obj.getAddress());
			ps.setString(9,obj.getDate());
			ps.setString(10,obj.getState());
			ps.setString(11,obj.getGender() );
			
			
			int i= ps.executeUpdate();
			/*if(obj.getPwd().equals(obj.getCpwd()))
			{
		return("sucess");
		}*/
			
			
			
				 if(i!=0)
				{
					return "success";
				}
			
				else 
				{
					return "fail"; 
				}
				
			
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return " fail to load";
		}
	
	public static String ValidateUserName(String sql1) 
	{
		
		try
		{
			ps=con.prepareStatement(sql1);
		
			 rs=ps.executeQuery();
			  int count=0;
			   while(rs.next())
			   {
				   count++;
			   }

				 if(count==1)
				{
					return "success";
				}
			
				else 
				{
					return "fail"; 
				}
				
			   
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return " fail to fetch ";
		}
	
	
	
	
	public static String ValidateUser(String sql, LoginModel obj) throws InterruptedException 
	{
		
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getUname());
			ps.setString(2,obj.getPwd());
			 rs=ps.executeQuery();
			  int count=0;
			   while(rs.next())
			   {
				   count++;
			   }

				 if(count>=1)
				{
					return "success";
				}
			
				else 
				{
					return "fail"; 
				}
				
			   
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return " fail ";
		}
	
	
	public static String ValidateAdminLogIn(String sql,AdminLogInModel obj3)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,obj3.getUname());
			ps.setString(2,obj3.getPwd());
			rs=ps.executeQuery();
			int i=0;
			while(rs.next())
			{
				i++;
			}
			if(i>=1)
			{
				System.out.println("success"+"  "+obj3.getUname()+"   "+obj3.getPwd());
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "TryAgainPlz!";
	}
	
	
	public static ResultSet FetchUserData(String sql) 
	{
		try
		{
			 ps=con.prepareStatement(sql);
			 rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs ;
		}
	
	public static String UpdateUserData(String sql, RegisterModel obj,String uname)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(12, uname);
			ps.setString(1,obj.getFname());
			ps.setString(2,obj.getLname());
			ps.setString(3,obj.getUname());
			ps.setString(4,obj.getPwd());
			ps.setString(5,obj.getCpwd());
			ps.setString(6,obj.getEmail());
			ps.setString(7,obj.getContact());
			ps.setString(8,obj.getAddress());
			ps.setString(9,obj.getDate());
			ps.setString(10,obj.getState());
			ps.setString(11,obj.getGender() );
			int i= ps.executeUpdate();
				 if(i!=0)
				 	{
					 return "success";
				 	}
				 else 
				 	{
					 return "fail"; 
				 	}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	return " fail to Update";
		}
	
	

	public static void main(String[] args) 
	{
		// TODO Auto-generated method stubs

	}
	
	}


