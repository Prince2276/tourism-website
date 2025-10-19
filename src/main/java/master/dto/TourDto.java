package master.dto;

import java.util.Date;

public class TourDto {
	private String tid;
	private String tname;
	private String tplace1;
	private String tplace2;
	private String tplace3;
	private Date tdate;
	private String tprice;

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTplace1() {
		return tplace1;
	}

	public void setTplace1(String tplace1) {
		this.tplace1 = tplace1;
	}

	public String getTplace2() {
		return tplace2;
	}

	public void setTplace2(String tplace2) {
		this.tplace2 = tplace2;
	}

	public String getTplace3() {
		return tplace3;
	}

	public void setTplace3(String tplace3) {
		this.tplace3 = tplace3;
	}

	public Date getTdate() {
		return tdate;
	}

	public void setTdate(Date tdate) {
		this.tdate = tdate;
	}

	public String getTprice() {
		return tprice;
	}

	public void setTprice(String tprice) {
		this.tprice = tprice;
	}

}
