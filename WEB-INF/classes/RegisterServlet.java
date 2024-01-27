package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
import model.CredentialsBean;

public class RegisterServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		String password = request.getParameter("password");

		CredentialsBean cb = new CredentialsBean();

		cb.setEmail(email);
		cb.setPhone(phone);
		cb.setName(name);
		cb.setPassword(password);

		if(cb.register()){
			out.print("<div style='position: absolute; top: 8vw; left: 0; width: 100%;'>");
        		out.print("<p style='color: red; text-align: center;'>Account Created Successfully!!</p>");
    			out.print("</div>");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request,response);
		}
		else{
			out.print("<div style='position: absolute; top: 8vw; left: 0; width: 100%;'>");
        		out.print("<p style='color: red; text-align: center;'>Account already exists!!</p>");
    			out.print("</div>");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request,response);
		}
	}
}

		