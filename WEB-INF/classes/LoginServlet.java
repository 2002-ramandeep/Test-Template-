package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
import model.CredentialsBean;

public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		CredentialsBean cb = new CredentialsBean();

		cb.setEmail(email);
		cb.setPassword(password);

		if(!cb.attempted()){
			if(cb.login()){
				if(cb.valid){
					HttpSession session = request.getSession();
					session.setAttribute("email",email);
					response.sendRedirect("test.jsp");	
				}
				else{
					out.print("<div style='position: absolute; top: 8vw; left: 0; width: 100%;'>");
        				out.print("<p style='color: red; text-align: center;'>Wrong Password!!</p>");
    					out.print("</div>");
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.include(request,response);
				}	
			}
			else{
				out.print("<div style='position: absolute; top: 8vw; left: 0; width: 100%;'>");
        			out.print("<p style='color: red; text-align: center;'>Account does'nt exists!!</p>");
    				out.print("</div>");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request,response);
			}
		}
		else{
			HttpSession session = request.getSession();
			session.setAttribute("email",email);
			response.sendRedirect("assets/jsp-pages/result.jsp");
			/*RequestDispatcher rd = request.getRequestDispatcher("../../assets/jsp-pages/result.jsp");
			rd.forward(request,response);*/
		}
	}
}	
			