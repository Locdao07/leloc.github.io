package bean;

public class Khachhang {
		
		String hoten;
		String diachi;
		String sdt;
		String email;
		String tendn;
		String pass;
		
		public Khachhang( String hoten, String diachi, String sdt, String email, String tendn,
				String pass) {
			super();
			
			this.hoten = hoten;
			this.diachi = diachi;
			this.sdt = sdt;
			this.email = email;
			this.tendn = tendn;
			this.pass = pass;
		}

		public Khachhang() {
			super();
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

		@Override
		public String toString() {
			return "Khachhang [ hoten=" + hoten + ", diachi=" + diachi + ", sdt=" + sdt + ", email="
					+ email + ", tendn=" + tendn + ", pass=" + pass + "]";
		}
		

}
