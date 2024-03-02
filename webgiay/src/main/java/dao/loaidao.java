package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;


public class loaidao {
    public ArrayList<loaibean> getloai(){
    	ArrayList<loaibean> ds= new ArrayList<loaibean>();
    	try {
			KetNoi kn= new KetNoi();
			kn.KetNoi();
			String sql="select * from loai";
			PreparedStatement cmd=kn.cn.prepareStatement(sql);
			ResultSet rs=cmd.executeQuery();
			
			while(rs.next()) {
				String maloai=rs.getString("maloai");
				String tenloai=rs.getString("tenloai");
				ds.add(new loaibean(maloai, tenloai));
			}
			
			rs.close();
			kn.cn.close();
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}

    	
    }
    public int Them(String maloai,String tenloai) {
		try {
			KetNoi kn= new KetNoi();
			kn.KetNoi();
			String sql="insert into loai(maloai,tenloai) values(?,?)";
			PreparedStatement cmd=kn.cn.prepareStatement(sql);
			cmd.setString(1, maloai);
			cmd.setString(2, tenloai);
			int kq=cmd.executeUpdate();
			kn.cn.close();
			return kq;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
  public int Sua(String maloai,String tenloai) {
		try {
			KetNoi kn= new KetNoi();
			kn.KetNoi();
			String sql="update loai  set maloai=? ,tenloai=? where maloai=?";
			PreparedStatement cmd=kn.cn.prepareStatement(sql);
			cmd.setString(1, maloai);
			cmd.setString(2, tenloai);
			cmd.setString(3, maloai);
			int kq=cmd.executeUpdate();
			kn.cn.close();
			return kq;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
  public int Xoa(String maloai) throws Exception{
	  try{
		  KetNoi kn= new KetNoi();
			kn.KetNoi();
		String sql="delete from loai where maloai=?";
		PreparedStatement cmd=kn.cn.prepareStatement(sql);
		cmd.setString(1,maloai);
		int kq=cmd.executeUpdate();
		kn.cn.close();
		return kq;
	} catch (Exception e) {
		e.printStackTrace();
		return 0;
	}
	}
    public static void main(String[] args) {
 		loaidao lsbo = new loaidao();
 		System.out.println(lsbo.getloai());
 	}
}