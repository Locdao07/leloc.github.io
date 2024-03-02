package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Giohangbean;
import bean.Khachhangbean;
import bo.Chitietbo;
import bo.Giohangbo;
import bo.Hoadonbo;

/**
 * Servlet implementation class Dathang
 */
@WebServlet("/Dathang")
public class Dathang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dathang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			Khachhangbean kh = (Khachhangbean) session.getAttribute("dn");
			if (kh == null)
				response.sendRedirect("Ktdn");
			else {
				Hoadonbo hdbo = new Hoadonbo();
				Chitietbo ctbo = new Chitietbo();
				Giohangbo gh = (Giohangbo) session.getAttribute("gio");
				// Tao ra 1 hoa don
				hdbo.Them(kh.getMakh());
				long maxmahd = hdbo.maxhd();
				// Tao ra cac chi tiet hoa don
				for (Giohangbean g : gh.ds)
					ctbo.Them(g.getMagiay(), g.getSoluong(), maxmahd);
				session.removeAttribute("gio");
				response.sendRedirect("Lichsumuahangcontroller");
			}

		} catch (Exception e) {
			System.out.println("lỗi:"+e.getMessage());
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
