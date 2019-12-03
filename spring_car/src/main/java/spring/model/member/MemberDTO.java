package spring.model.member;

public class MemberDTO {

	private int mnum;// MNUM NUMBER(10) NOT NULL, 
	private String id;//	ID VARCHAR(10) not null, 
	private String passwd;//	PASSWD VARCHAR(20) NOT NULL, 
	private String phone;//	PHONE VARCHAR(15) NOT NULL, 
	private String email;//	EMAIL VARCHAR(50) NOT NULL, 
	private String grade;//GRADE CHAR(1) DEFAULT 'H', 
	
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(int mnum, String id, String passwd, String phone, String email, String grade) {
		super();
		this.mnum = mnum;
		this.id = id;
		this.passwd = passwd;
		this.phone = phone;
		this.email = email;
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "MemberDTO [mnum=" + mnum + ", id=" + id + ", passwd=" + passwd + ", phone=" + phone + ", email=" + email
				+ ", grade=" + grade + "]";
	}

	public int getMnum() {
		return mnum;
	}

	public void setMnum(int mnum) {
		this.mnum = mnum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	
}
