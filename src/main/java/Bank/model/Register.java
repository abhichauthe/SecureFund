package Bank.model;

public class Register {
	

	
		private int regNo;
		private String custName;
		private String username;
		private String password;
		private float accBal;
		public Register()
		{
			
		}
		public Register(int regNo, String custName, String username, String password, float accBal) {
			super();
			this.regNo = regNo;
			this.custName = custName;
			this.username = username;
			this.password = password;
			this.accBal = accBal;
		}
		public int getRegNo() {
			return regNo;
		}
		public void setRegNo(int regNo) {
			this.regNo = regNo;
		}
		public String getCustName() {
			return custName;
		}
		public void setCustName(String custName) {
			this.custName = custName;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public float getAccBal() {
			return accBal;
		}
		public void setAccBal(float accBal) {
			this.accBal = accBal;
		}
		

	


}