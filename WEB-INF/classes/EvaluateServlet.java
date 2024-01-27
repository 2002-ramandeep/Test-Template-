package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
import java.util.*;
import model.ResultBean;

public class EvaluateServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		
		int count = (Integer)session.getAttribute("count");
		String[] physics = new String[count];
		String[] chemistry = new String[count];
		String[] mathematics = new String[count];

		for(int i=0;i<count;i++){
			String p = request.getParameter("p"+(i+1));
			if(p!=null){
				physics[i] = p;
			}
			else{
				physics[i] = "N/A";
			}
		}

		for(int i=0;i<count;i++){
			String c = request.getParameter("c"+(i+1));
			if(c!=null){
				chemistry[i] = c;
			}
			else{
				chemistry[i] = "N/A";
			}
		}

		for(int i=0;i<count;i++){
			String m = request.getParameter("m"+(i+1));
			if(m!=null){
				mathematics[i] = m;
			}
			else{
				mathematics[i] = "N/A";
			}
		}

		ResultBean rb = new ResultBean();

		rb.setPhysics(physics);
		rb.setChemistry(chemistry);
		rb.setMathematics(mathematics);

		int pScore = rb.physicsScore();
		int cScore = rb.chemistryScore();
		int mScore = rb.mathematicsScore();
	
		out.println(pScore);
		out.println(cScore);
		out.println(mScore);

		/*RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
		rd.forward(request,response);*/
	}
}