package bo;

import java.util.ArrayList;

import bean.adminxacnhanbean;
import dao.Chitietdao;

public class Chitietbo {
	Chitietdao ct= new Chitietdao();
	  public int Them(String magiay, long soluongmua, long mahd) {
		  return ct.Them(magiay, soluongmua, mahd);
	  }
	  public int Sua(long mact) throws Exception{
			return ct.Sua(mact);
		}
		public ArrayList<adminxacnhanbean> getxacnhan() throws Exception{
			return ct.getXacnhan();
		}

}
