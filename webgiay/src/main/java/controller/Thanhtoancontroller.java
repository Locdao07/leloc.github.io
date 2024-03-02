package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Giohangbean;
import bean.Khachhangbean;
import bo.Giohangbo;
import dao.Chitietdao;
import dao.Hoadondao;

/**
 * Servlet implementation class thanhtoan
 */
@WebServlet("/thanhtoancontroller")
public class Thanhtoancontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Thanhtoancontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Hoadondao hddao= new Hoadondao();
		Chitietdao  ctdao = new Chitietdao();
		HttpSession ss=request.getSession();
		Khachhangbean kh= (Khachhangbean) ss.getAttribute("kh");
		    if(kh == null) {
		    	RequestDispatcher rd = request.getRequestDispatcher("Ktdn");
				rd.forward(request, response);
		    }
			if(kh!=null) {
				Giohangbo gh= (Giohangbo)ss.getAttribute("gio");
				hddao.Them(kh.getMakh());//them vao 1 hoa don;
				long mahd=hddao.maxhd();
				for(Giohangbean g: gh.ds) 
				{
				  ctdao.Them(g.getMagiay(),(int)g.getSoluong(), mahd);	
				}
				ss.removeAttribute("gio");
		    }
			RequestDispatcher rd= request.getRequestDispatcher("Thanhtoan.jsp");
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
