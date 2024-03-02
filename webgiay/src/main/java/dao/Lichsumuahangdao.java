package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import bean.Lichsumuahangbean;
import bean.Giaybean;

public class Lichsumuahangdao {
	
	public ArrayList<Lichsumuahangbean> HienThi(long makh) {
		ArrayList<Lichsumuahangbean> ds= new ArrayList<Lichsumuahangbean>();
	try {
		//B1: ket noi vao csdl 
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		
		//B2: lay du lieu ve
		String sql = "select * from vlichsumuahang where makh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		ResultSet rs = cmd.executeQuery();
		
		//B3: Duyet rs de luu vao
		while(rs.next()) {
			// lay ve maloai a tenloai
			Long makhang=rs.getLong("makh");
			String tengiay=rs.getString("tengiay");
			Integer SoLuongMua=rs.getInt("SoLuongMua");
			Long gia = rs.getLong("gia");
			Long thanhtien = rs.getLong("thanhtien");
			Boolean damua = rs.getBoolean("damua");
			ds.add(new Lichsumuahangbean(makhang, tengiay, SoLuongMua, gia, thanhtien, damua));
		}
		
		//B4: Dong cac doi tuong
		rs.close();
		kn.cn.close();
		return ds;
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
}
	
//	public static void main(String[] args) {
//		lichsumuahangdao ls = new lichsumuahangdao();
//			System.out.println(ls.HienThi(20));
//	}
}