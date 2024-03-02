package bo;

import java.util.ArrayList;

import bean.Giohangbean;

public class Giohangbo {
	public ArrayList<Giohangbean> ds=
			   new ArrayList<Giohangbean>();
	   public void Them(String magiay, String tengiay, long gia, long soluong) {
		   for(Giohangbean h: ds)
			   if(h.getMagiay().equals(magiay)) {
				   h.setSoluong(h.getSoluong()+ soluong);
				   return;
			   }
		   ds.add(new Giohangbean(magiay, tengiay, gia, soluong));
	   }
	   public long Tongtien() {
		   long s=0;
		   for(Giohangbean h: ds)
			   s=s+h.getThanhtien();
		   return s;
	   }

	   public void Xoa(String magiay) {
		  
		   for(Giohangbean h: ds)
			   if(h.getMagiay().equals(magiay)) {
				   ds.remove(h);
				   return;
	   }
}
	   }
