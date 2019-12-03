package spring.model.qna;

import org.springframework.web.multipart.MultipartFile;

public class QnaDTO {
	
	private int qnum;//QNUM NUMBER(6) NOT NULL, 
	private String id;//ID VARCHAR(20) NOT NULL, 
	private String qtitle;//QTITLE VARCHAR(50) NOT NULL, 
	private String qcontent;//QCONTENT VARCHAR(4000) NOT NULL, 
	private int qviewcnt;//QVIEWCNT NUMBER(5,0) DEFAULT 0 NOT NULL, 
	private String qwdate;//QWDATE DATE NOT NULL, 
	private String qpasswd;//QPASSWD VARCHAR(15) NOT NULL, 
	private String qfname;//QFNAME VARCHAR(100) null, 
	private int qfsize;//QFSIZE NUMBER(38) null, 
	private int qref;//QREF NUMBER(6) NOT NULL, 
	private int qindent;//QINDENT NUMBER(6) DEFAULT 0 NOT NULL, 
	private int qansnum;//QANSNUM NUMBER(6) DEFAULT 0 NOT NULL, 
	private int qrefnum;//QREFNUM NUMBER DEFAULT 0, 
	private MultipartFile qfnameMF;
	
	public QnaDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QnaDTO(int qnum, String id, String qtitle, String qcontent, int qviewcnt, String qwdate, String qpasswd,
			String qfname, int qfsize, int qref, int qindent, int qansnum, int qrefnum, MultipartFile qfnameMF) {
		super();
		this.qnum = qnum;
		this.id = id;
		this.qtitle = qtitle;
		this.qcontent = qcontent;
		this.qviewcnt = qviewcnt;
		this.qwdate = qwdate;
		this.qpasswd = qpasswd;
		this.qfname = qfname;
		this.qfsize = qfsize;
		this.qref = qref;
		this.qindent = qindent;
		this.qansnum = qansnum;
		this.qrefnum = qrefnum;
		this.qfnameMF = qfnameMF;
	}

	@Override
	public String toString() {
		return "QnaDTO [qnum=" + qnum + ", id=" + id + ", qtitle=" + qtitle + ", qcontent=" + qcontent + ", qviewcnt="
				+ qviewcnt + ", qwdate=" + qwdate + ", qpasswd=" + qpasswd + ", qfname=" + qfname + ", qfsize=" + qfsize
				+ ", qref=" + qref + ", qindent=" + qindent + ", qansnum=" + qansnum + ", qrefnum=" + qrefnum
				+ ", qfnameMF=" + qfnameMF + "]";
	}

	public int getQnum() {
		return qnum;
	}

	public void setQnum(int qnum) {
		this.qnum = qnum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getQtitle() {
		return qtitle;
	}

	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}

	public String getQcontent() {
		return qcontent;
	}

	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public int getQviewcnt() {
		return qviewcnt;
	}

	public void setQviewcnt(int qviewcnt) {
		this.qviewcnt = qviewcnt;
	}

	public String getQwdate() {
		return qwdate;
	}

	public void setQwdate(String qwdate) {
		this.qwdate = qwdate;
	}

	public String getQpasswd() {
		return qpasswd;
	}

	public void setQpasswd(String qpasswd) {
		this.qpasswd = qpasswd;
	}

	public String getQfname() {
		return qfname;
	}

	public void setQfname(String qfname) {
		this.qfname = qfname;
	}

	public int getQfsize() {
		return qfsize;
	}

	public void setQfsize(int qfsize) {
		this.qfsize = qfsize;
	}

	public int getQref() {
		return qref;
	}

	public void setQref(int qref) {
		this.qref = qref;
	}

	public int getQindent() {
		return qindent;
	}

	public void setQindent(int qindent) {
		this.qindent = qindent;
	}

	public int getQansnum() {
		return qansnum;
	}

	public void setQansnum(int qansnum) {
		this.qansnum = qansnum;
	}

	public int getQrefnum() {
		return qrefnum;
	}

	public void setQrefnum(int qrefnum) {
		this.qrefnum = qrefnum;
	}

	public MultipartFile getQfnameMF() {
		return qfnameMF;
	}

	public void setQfnameMF(MultipartFile qfnameMF) {
		this.qfnameMF = qfnameMF;
	}
	
}
