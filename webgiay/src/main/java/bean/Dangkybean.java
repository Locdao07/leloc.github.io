package bean;

public class Dangkybean {
	private String hoten;
	private String diachi;
	private String sdt;
	private String email;
	private String tendn;
	private String pass;
	public Dangkybean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Dangkybean(String hoten, String diachi, String sdt, String email, String tendn, String pass) {
		super();
		this.hoten = hoten;
		this.diachi = diachi;
		this.sdt = sdt;
		this.email = email;
		this.tendn = tendn;
		this.pass = pass;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTendn() {
		return tendn;
	}
	public void setTendn(String tendn) {
		this.tendn = tendn;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
}
