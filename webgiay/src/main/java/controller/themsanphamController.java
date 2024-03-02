package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.Giaybean;

import bo.Giaybo;


/**
 * Servlet implementation class themsanphamController
 */
@WebServlet("/themsanphamController")
public class themsanphamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themsanphamController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");

				DiskFileItemFactory factory = new DiskFileItemFactory();
				DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
				String dirUrl1 = request.getServletContext().getRealPath("") +  File.separator + "image_giay";
				response.getWriter().println(dirUrl1);
				String magiay = null;
		 		String tengiay= null;
		 		long soluong = 0;
		 		long gia = 0 ;
		 		String maloai = null;
		 		String anh = null;
//		
		 		String hanggiay=null;
		 		String tenanh = null;
		 		String tb = null;
				Giaybo sbo = new Giaybo();
				ArrayList<Giaybean> ds =sbo.getgiay();
				try {
					List<FileItem> fileItems = upload.parseRequest(request);
					for (FileItem fileItem : fileItems) {
						if (!fileItem.isFormField()) {
							String nameimg = fileItem.getName();
							tenanh = nameimg;
							if (!nameimg.equals("")) {
								String dirUrl = request.getServletContext().getRealPath("") +  File.separator + "image_giay";
								File dir = new File(dirUrl);
								if (!dir.exists()) {
									dir.mkdir();
								}
								String fileImg = dirUrl + File.separator + nameimg;
								File file = new File(fileImg);
								try {
									fileItem.write(file);
									System.out.println("UPLOAD THÀNH CÔNG...!");
									System.out.println("ĐƯỜNG DẪN KIỂM TRA UPLOAD HÌNH ẢNH : \n" + dirUrl);
								} catch (Exception e) {
									System.out.println("CÓ LỖI TRONG QUÁ TRÌNH UPLOAD!");
									e.printStackTrace();
								}
							}
						} else {
							request.setCharacterEncoding("utf-8");
							response.setCharacterEncoding("utf-8");
							String tentk = fileItem.getFieldName();
							if (tentk.equals("magiay"))
//								response.getWriter().println(fileItem.getString());
								magiay =  fileItem.getString("UTF-8");
							if (tentk.equals("tengiay"))
//								response.getWriter().println(fileItem.getString());
								tengiay =  fileItem.getString("UTF-8");
							if (tentk.equals("soLuong"))
//								response.getWriter().println(fileItem.getString());
								soluong = Long.parseLong(fileItem.getString());
							if (tentk.equals("gia"))
//								response.getWriter().println(fileItem.getString());
								gia = Long.parseLong(fileItem.getString());
							if (tentk.equals("maloai"))
//								response.getWriter().println(fileItem.getString());
								maloai = fileItem.getString("UTF-8");
//							if (tentk.equals("ngaynhap")) {
//								 SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
//								 String date1 = fileItem.getString();
//								 NgayNhap = format.parse(date1);
////								response.getWriter().println(fileItem.getString());
//								}
							if (tentk.equals("hanggiay"))
								hanggiay =  fileItem.getString("UTF-8");
//								response.getWriter().println(fileItem.getString());
						
						}
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
				anh =  "image_giay/" + tenanh;
	
				int kq = sbo.Them(magiay, tengiay, soluong, gia, maloai, hanggiay);
				if(kq>0)
					tb = "Thêm sản phẩm thành công!";
				else
					tb = "Lỗi";
				request.setAttribute("tb", tb);
				RequestDispatcher rd = request.getRequestDispatcher("adminsanphamController");
				rd.forward(request, response);
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
