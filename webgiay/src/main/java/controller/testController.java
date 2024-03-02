package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class testController
 */
@WebServlet("/testController")
public class testController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//tao ra doi tuong out 
				PrintWriter out= response.getWriter();
				String aa=request.getParameter("txta");
				String bb=request.getParameter("txtb");
				if(aa!=null&&bb!=null) {
					long a=Long.parseLong(aa);
					long b=Long.parseLong(bb);
					long kq=0;
					String[] ts= {"ha" , "long" , "thu" };
					if(request.getParameter("butc")!=null) {
						kq= a+b;
					}else if(request.getParameter("butt")!=null) {
						kq= a-b;
					}else if(request.getParameter("butn")!=null) {
						kq= a*b;
					}else 
						if(b==0)
						      out.print("<script>alert('Chiu')");
						  else
							  kq= a/b;
					
					request.setAttribute("aa", a);
					request.setAttribute("bb", b);
					request.setAttribute("kq", kq);
					request.setAttribute("ts", ts);
					//response.sendRedirect("Maytinh.jsp?kq="+kq+"&a="+a+"&b="+b);
				}
				RequestDispatcher rd= request.getRequestDispatcher("Maytinh.jsp");
				rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
