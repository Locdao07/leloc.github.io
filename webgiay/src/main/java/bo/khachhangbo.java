package bo;

import java.util.ArrayList;

import bean.Khachhangbean;

import dao.Khachhangdao;

public class khachhangbo {
      Khachhangdao khdao= new Khachhangdao();
      public Khachhangbean ktdn(String tendn, String pass) {
    	  return khdao.ktdn(tendn, pass);
      }
      public void dangky (String hoten, String diachi, String sdt, String email, String tendn,
				String pass) throws Exception {
			 khdao.dangky(hoten, diachi, sdt, email, tendn, pass);
		}
		public ArrayList<Khachhangbean> getkhachhang() throws Exception{
			return khdao.getkhachhang();
		}
}
