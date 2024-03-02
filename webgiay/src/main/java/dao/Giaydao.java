package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.Giaybean;

public class Giaydao {
    public ArrayList<Giaybean> getgiay(){
    	ArrayList<Giaybean> ds= new ArrayList<Giaybean>();
    	try {
    		//b1: ket noi vao csdl QlSach
			KetNoi kn= new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve 
			String sql="select * from giay";
			PreparedStatement cmd=kn.cn.prepareStatement(sql);
			ResultSet rs=cmd.executeQuery();
			//b3: duyet rs de luu vao ds
			while(rs.next()) {
				//lay ve ma loai va ten loai 

				String magiay=rs.getString("magiay");
				String tengiay=rs.getString("tengiay");
				int soluong=rs.getInt("soluong");
				int gia = rs.getInt("gia");
				String maloai=rs.getString("maloai");
				
				String anh=rs.getString("anh");
				Date ngaynhap=rs.getDate("ngaynhap");
				String hanggiay=rs.getString("hanggiay");

				ds.add(new Giaybean(magiay, tengiay, gia, gia, maloai, anh, ngaynhap,hanggiay));
			}
			//b4: dong cac doi tuong
			rs.close();
			kn.cn.close();
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
    }
    
    public ArrayList<Giaybean> getListByPage(ArrayList<Giaybean> arr, int start, int end){
    	ArrayList<Giaybean> ds2 = new ArrayList<Giaybean>();
    	for(int i = start; i<= end; i++) {
    		ds2.add(arr.get(i));
    	}
    	return ds2;
    }
    public int Them(String magiay, String tengiay, long soluong, long gia, String maloai, String hanggiay ) throws Exception { 
		//B1 : ket noi
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		//B2 : Tao cau lenh sql
		String sql = "insert into giay(magiay,tengiay,soluong,gia,maloai,hanggiay) values(?,?,?,?,?,?,?)";
		
		//B3 : tao cau lenh prepareStatement
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		
		//B4 : truyen tham so
		cmd.setString(1, magiay);
		cmd.setString(2, tengiay);
		cmd.setLong(3, soluong);
		cmd.setLong(4, gia);
		cmd.setString(5, maloai);
		cmd.setString(6, hanggiay);
		
		

			
		int kq = cmd.executeUpdate();
		//B5 : Dong ket noi va rs
		cmd.close();
		kn.cn.close();
		return kq;
	}
    public int xoa(String magiay) throws Exception {
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		//B2 : Tao cau lenh sql
		String sql = "delete from giay where magiay=?" ;
		
		//B3 : Tao cau lenh prepare Statement
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		//B4 : Thuc hien cau lenh 
		cmd.setString(1, magiay);
		//Lay Ngay Gio Hien Tai
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
    
}
