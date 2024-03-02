package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.admindangnhapbo;

/**
 * Servlet implementation class dangkyadmin
 */
@WebServlet("/dangkyadmin")
public class dangkyadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyadmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String mess = null;
		try {
			String tentk = request.getParameter("tentk");
			String mk = request.getParameter("mk");
			String mklai = request.getParameter("mklai");
			
			if(tentk !=null && !tentk.isEmpty() && mk!=null && !mk.isEmpty() && mk.equals(mklai)) {
				admindangnhapbo dnbo = new admindangnhapbo();
				dnbo.dangky(tentk, mk);
				response.sendRedirect("dangnhapadminController");
			}
			else {
				 mess = "Lỗi";
				    request.setAttribute("mess", mess);
				    RequestDispatcher rd = request.getRequestDispatcher("dangkyadmin.jsp");
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
