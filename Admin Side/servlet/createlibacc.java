package com.control;
import java.io.*;  
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class createlibacc extends HttpServlet
{  
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {  
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        HttpSession session = request.getSession();
        RequestDispatcher desp = null;
        
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");  
        String name = request.getParameter("name");  
        Integer age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String emailid = request.getParameter("emailid");  
        Date dob = java.sql.Date.valueOf(request.getParameter("dob"));
        
        try
        {  
            Class.forName("com.mysql.cj.jdbc.Driver");   
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"lms","root","Strenous116$");   
            PreparedStatement ps=con.prepareStatement("insert into librarian values(?,?,?,?,?,?,?);");  

            ps.setString(1,userid);  
            ps.setString(2,password);  
            ps.setString(3,name);  
            ps.setInt(4,age);  
            ps.setString(5,gender);
            ps.setString(6,emailid);  
            ps.setDate(7,dob);  
            
            
            int i = ps.executeUpdate();  
            if(i>0)  
            {
            	request.setAttribute("status", "success");
                desp = request.getRequestDispatcher("createlibacc.jsp");
                desp.forward(request, response);
                
//                out.println("Account created successfully!"); 
//                out.println(" "); 
            }
            
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }  
        out.close();  
    }  
}