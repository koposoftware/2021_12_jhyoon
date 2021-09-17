package kr.ac.kopo.backtest.vo;

public class BackTestResultFlucVO {
	private int backNo;
	private int portNum;
	private String userId;
	private String stockDate;
	private double stockFluc;
	private double stockDayFluc;
	private double kospiFluc;
	private double kospiDayFluc;
	private double kosdaqFluc;
	private double kosdaqDayFluc;
	public int getBackNo() {
		return backNo;
	}
	public void setBackNo(int backNo) {
		this.backNo = backNo;
	}
	public int getPortNum() {
		return portNum;
	}
	public void setPortNum(int portNum) {
		this.portNum = portNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getStockDate() {
		return stockDate;
	}
	public void setStockDate(String stockDate) {
		this.stockDate = stockDate;
	}
	public double getStockFluc() {
		return stockFluc;
	}
	public void setStockFluc(double stockFluc) {
		this.stockFluc = stockFluc;
	}
	public double getStockDayFluc() {
		return stockDayFluc;
	}
	public void setStockDayFluc(double stockDayFluc) {
		this.stockDayFluc = stockDayFluc;
	}
	public double getKospiFluc() {
		return kospiFluc;
	}
	public void setKospiFluc(double kospiFluc) {
		this.kospiFluc = kospiFluc;
	}
	public double getKospiDayFluc() {
		return kospiDayFluc;
	}
	public void setKospiDayFluc(double kospiDayFluc) {
		this.kospiDayFluc = kospiDayFluc;
	}
	public double getKosdaqFluc() {
		return kosdaqFluc;
	}
	public void setKosdaqFluc(double kosdaqFluc) {
		this.kosdaqFluc = kosdaqFluc;
	}
	public double getKosdaqDayFluc() {
		return kosdaqDayFluc;
	}
	public void setKosdaqDayFluc(double kosdaqDayFluc) {
		this.kosdaqDayFluc = kosdaqDayFluc;
	}
	@Override
	public String toString() {
		return "BackTestResultFlucVO [backNo=" + backNo + ", portNum=" + portNum + ", userId=" + userId + ", stockDate="
				+ stockDate + ", stockFluc=" + stockFluc + ", stockDayFluc=" + stockDayFluc + ", kospiFluc=" + kospiFluc
				+ ", kospiDayFluc=" + kospiDayFluc + ", kosdaqFluc=" + kosdaqFluc + ", kosdaqDayFluc=" + kosdaqDayFluc
				+ "]";
	}

	
	
	
	
	
	
}
