package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.Giohangbo;

/**
 * Servlet implementation class Giohang
 */
@WebServlet("/Giohang")
public class Giohang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Giohang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		    String magiay =request.getParameter("mg");
			String tengiay =request.getParameter("tg");
			long gia=Long.parseLong(request.getParameter("gia"));
			Giohangbo gh=null;
			HttpSession session = request.getSession();
			//Neu mua lan dau thi tao cho kh 1 gio: session
			if(session.getAttribute("gio")==null){
				gh=new Giohangbo();//Cap phat vung nho de luu gio
				session.setAttribute("gio", gh);//Tao session
			}
			//b1: Luu session ra bien
			gh=(Giohangbo)session.getAttribute("gio");
			//b2: Thay doi bien
			gh.Them(magiay, tengiay, gia, (long)1);
			//b3: Luu Lại session
			session.setAttribute("gio", gh);
			//Hien thi gio
			response.sendRedirect("Htgio");
			
			
			
	} catch (Exception e) {
		// TODO: handle exception
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
