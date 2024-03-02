package bo;



import dao.Dangkydao;

public class Dangkybo {
	Dangkydao dk=new Dangkydao();
	 public int Them(String hoten, String diachi, String sdt, String email, String tendn, String pass) throws Exception{
	    return dk.Them(hoten, diachi, sdt, email, tendn, pass);
	 }
	 }
