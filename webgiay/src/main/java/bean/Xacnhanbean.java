package bean;

import java.util.Date;

public class Xacnhanbean {
     private long MaChiTietHD;
     private String hoten;
     private String tengiay;
     private Date NgayMua;
     private long SoLuongMua;
     private long Gia;
     private long ThanhTien;
     private  boolean damua;
	public Xacnhanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Xacnhanbean(long maChiTietHD, String hoten, String tengiay, Date ngayMua, long soLuongMua, long gia,
			long thanhTien, boolean damua) {
		super();
		MaChiTietHD = maChiTietHD;
		this.hoten = hoten;
		this.tengiay = tengiay;
		NgayMua = ngayMua;
		SoLuongMua = soLuongMua;
		Gia = gia;
		ThanhTien = thanhTien;
		this.damua = damua;
	}
	public long getMaChiTietHD() {
		return MaChiTietHD;
	}
	public void setMaChiTietHD(long maChiTietHD) {
		MaChiTietHD = maChiTietHD;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getTengiay() {
		return tengiay;
	}
	public void setTengiay(String tengiay) {
		this.tengiay = tengiay;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		NgayMua = ngayMua;
	}
	public long getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(long soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public long getGia() {
		return Gia;
	}
	public void setGia(long gia) {
		Gia = gia;
	}
	public long getThanhTien() {
		return ThanhTien;
	}
	public void setThanhTien(long thanhTien) {
		ThanhTien = thanhTien;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	@Override
	public String toString() {
		return "Xacnhanbean [MaChiTietHD=" + MaChiTietHD + ", hoten=" + hoten + ", tengiay=" + tengiay + ", NgayMua="
				+ NgayMua + ", SoLuongMua=" + SoLuongMua + ", Gia=" + Gia + ", ThanhTien=" + ThanhTien + ", damua="
				+ damua + "]";
	}
     
}
