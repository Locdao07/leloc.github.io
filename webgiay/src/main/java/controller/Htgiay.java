package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.loaibean;
import bean.Giaybean;
import bo.loaibo;
import bo.Giaybo;

/**
 * Servlet implementation class Htgiay
 */
@WebServlet("/Htgiay")
public class Htgiay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Htgiay() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			loaibo lbo = new loaibo();
			Giaybo sbo = new Giaybo();
			ArrayList<loaibean> dsgiay1 = new ArrayList<loaibean>();
			dsgiay1 = lbo.getloai();
			request.setAttribute("dsgiay1", dsgiay1);
			 
			 request.setCharacterEncoding("utf-8");
		     response.setCharacterEncoding("utf-8");
		     String ml=request.getParameter("ml");
		     String key=request.getParameter("txttk");
		     ArrayList<Giaybean> dsgiay=sbo.getgiay();
		     
		     if(ml!=null)
		    	 dsgiay=sbo.TimMa(ml);
		     else
		    	 if(key!=null)
			    	 dsgiay=sbo.Tim(key);
		     int trang;
		  		if(request.getParameter("trang") == null) {
		  			trang = 1;
		  		}else trang = Integer.parseInt(request.getParameter("trang"));
		  		
		  		request.setAttribute("trang", trang);
		     request.setAttribute("dsgiay", dsgiay);
			 RequestDispatcher rd = request.getRequestDispatcher("Htgiay.jsp");
			 rd.forward(request, response);
			
			}catch (Exception e) {
				 
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