package spring.model.price;

public class PriceDTO {
	
	private int cnum;//CNUM NUMBER(10) NOT NULL, 
	private String poption;//POPTION VARCHAR(4000) NOT NULL, 
	private int pcost;//PCOST NUMBER(20) NOT NULL, 
	
	public PriceDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PriceDTO(int cnum, String poption, int pcost) {
		super();
		this.cnum = cnum;
		this.poption = poption;
		this.pcost = pcost;
	}

	@Override
	public String toString() {
		return "PriceDTO [cnum=" + cnum + ", poption=" + poption + ", pcost=" + pcost + "]";
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	public String getPoption() {
		return poption;
	}

	public void setPoption(String poption) {
		this.poption = poption;
	}

	public int getPcost() {
		return pcost;
	}

	public void setPcost(int pcost) {
		this.pcost = pcost;
	}

}
