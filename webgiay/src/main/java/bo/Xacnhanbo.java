package bo;


import java.util.ArrayList;
import bean.Xacnhanbean;
import dao.Xacnhandao;

public class Xacnhanbo {
	 Xacnhandao xndao= new Xacnhandao();
	  public ArrayList<Xacnhanbean> getdanhsach(){
		  return xndao.getdanhsach();
	  }

	   public static void main(String[] args) {
		Xacnhanbo lsbo = new Xacnhanbo();
		System.out.println(lsbo.getdanhsach());
	}
	   public void UpdateDaMua(long mct) {
	    	for(Xacnhanbean ad : xndao.getdanhsach()) {
	    		if(ad.getMaChiTietHD() ==(mct)) {
	    			xndao.UpdateDamua(mct);
	    		}
	    	}
	     }
}