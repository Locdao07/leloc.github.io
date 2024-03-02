package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.Khachhangbean;
import bean.Lichsumuahangbean;
import bean.loaibean;
import bo.lichsumuahangbo;
import bo.loaibo;


/**
 * Servlet implementation class lichsumuahangcontroller
 */
@WebServlet("/Lichsumuahangcontroller")
public class Lichsumuahangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Lichsumuahangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			loaibo lbo=new loaibo();
			
			ArrayList<loaibean> dsgiay1=lbo.getloai();
			request.setAttribute("dsgiay1", dsgiay1); 
			
			
			HttpSession session=request.getSession();
			Khachhangbean kh=(Khachhangbean)session.getAttribute("dn");
			if(kh==null) {
				response.sendRedirect("Ktdn");
			}else {
				lichsumuahangbo lsbo= new lichsumuahangbo();
				ArrayList<Lichsumuahangbean> ls = lsbo.HienThi(kh.getMakh());
				if (ls != null) {
					request.setAttribute("dslichsu", ls);
				}
				
				RequestDispatcher rd= request.getRequestDispatcher("lichsumuahang.jsp");
				rd.forward(request, response);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}