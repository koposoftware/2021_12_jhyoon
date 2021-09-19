package kr.ac.kopo.backtest.vo;

public class BackTestResultAccVO {
	private int backNo;
	private int portNum;
	private String userId;
	private String backDate;
	private int totalBal;
	private int totalDeposit;
	private int buyTotalPrice;
	private int sellTotalPrice;
	private int totalStockPrice;
	private int backFee;
	private double earningRate;
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
	public String getBackDate() {
		return backDate;
	}
	public void setBackDate(String backDate) {
		this.backDate = backDate;
	}
	public int getTotalBal() {
		return totalBal;
	}
	public void setTotalBal(int totalBal) {
		this.totalBal = totalBal;
	}
	public int getTotalDeposit() {
		return totalDeposit;
	}
	public void setTotalDeposit(int totalDeposit) {
		this.totalDeposit = totalDeposit;
	}
	public int getBuyTotalPrice() {
		return buyTotalPrice;
	}
	public void setBuyTotalPrice(int buyTotalPrice) {
		this.buyTotalPrice = buyTotalPrice;
	}
	public int getSellTotalPrice() {
		return sellTotalPrice;
	}
	public void setSellTotalPrice(int sellTotalPrice) {
		this.sellTotalPrice = sellTotalPrice;
	}
	public int getTotalStockPrice() {
		return totalStockPrice;
	}
	public void setTotalStockPrice(int totalStockPrice) {
		this.totalStockPrice = totalStockPrice;
	}
	public int getBackFee() {
		return backFee;
	}
	public void setBackFee(int backFee) {
		this.backFee = backFee;
	}
	public double getEarningRate() {
		return earningRate;
	}
	public void setEarningRate(double earningRate) {
		this.earningRate = earningRate;
	}
	@Override
	public String toString() {
		return "BackTestResultAccVO [backNo=" + backNo + ", portNum=" + portNum + ", userId=" + userId + ", backDate="
				+ backDate + ", totalBal=" + totalBal + ", totalDeposit=" + totalDeposit + ", buyTotalPrice="
				+ buyTotalPrice + ", sellTotalPrice=" + sellTotalPrice + ", totalStockPrice=" + totalStockPrice
				+ ", backFee=" + backFee + ", EarningRate=" + earningRate + "]";
	}
	
	
	
}
