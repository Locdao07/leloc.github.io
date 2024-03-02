package bo;
import java.util.ArrayList;

import dao.Giaydao;
import bean.Giaybean;

public class Giaybo {
     Giaydao sdao=new Giaydao();
     ArrayList<Giaybean> ds;
     public ArrayList<Giaybean> getgiay(){
    	   ds=sdao.getgiay();
    	   return ds;
     }
     public ArrayList<Giaybean> TimMa(String maloai){
  	   ArrayList<Giaybean> tam= new ArrayList<Giaybean>();
  	  for(Giaybean s: ds)
  		  if(s.getMaloai().equals(maloai))
  			  tam.add(s);
  	  return tam;
     }
     public ArrayList<Giaybean> Tim(String key){
  	   ArrayList<Giaybean> tam= new ArrayList<Giaybean>();
  	  for(Giaybean s: ds)
  		  if(s.getTengiay().toLowerCase().contains(key.toLowerCase())||
  		    s.gethanggiay().toLowerCase().contains(key.toLowerCase())||
  		    s.getMaloai().toLowerCase().contains(key.toLowerCase()))
  			  tam.add(s);
  	  return tam;
     }
     public int Them(String magiay, String tengiay, long soluong, long gia, String maloai, String hanggiay ) throws Exception {
 		return sdao.Them(magiay, tengiay, soluong, gia, maloai,hanggiay);
 	}
     public int xoa(String magiay) throws Exception {
 		return sdao.xoa(magiay);
 	}

}
