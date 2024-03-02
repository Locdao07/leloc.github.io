package bean;

public class Giohangbean {
	private String magiay;
	private String tengiay;
	private long gia;
	private long soluong;
	private long thanhtien;
	public Giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Giohangbean(String magiay, String tengiay, long gia, long soluong) {
		super();
		this.magiay = magiay;
		this.tengiay = tengiay;
		this.gia = gia;
		this.soluong = soluong;
		this.thanhtien = gia*soluong;
	}
	public String getMagiay() {
		return magiay;
	}
	public void setMagiay(String magiay) {
		this.magiay = magiay;
	}
	public String getTengiay() {
		return tengiay;
	}
	public void setTengiay(String tengiay) {
		this.tengiay = tengiay;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
}
