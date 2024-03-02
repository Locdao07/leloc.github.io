package bo;

import java.util.ArrayList;

import bean.Lichsumuahangbean;
import bean.Giaybean;
import dao.Lichsumuahangdao;


public class lichsumuahangbo {
	Lichsumuahangdao lsdao= new Lichsumuahangdao();
	   ArrayList<Lichsumuahangbean> ds;
	   public ArrayList<Lichsumuahangbean> HienThi(Long makh){
		   return lsdao.HienThi(makh);
	   }
	   
//	   public static void main(String[] args) {
//		lichsumuahangbo lsbo = new lichsumuahangbo();
//		System.out.println(lsbo.HienThi((long)20));
//	}
}