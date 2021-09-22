package kr.ac.kopo.backtest.vo;

public class BackTestListVO {
	private int portNum;
	private String backTitle;
	private String backDate;
	private double earningRate;
	public int getPortNum() {
		return portNum;
	}
	public void setPortNum(int portNum) {
		this.portNum = portNum;
	}
	public String getBackTitle() {
		return backTitle;
	}
	public void setBackTitle(String backTitle) {
		this.backTitle = backTitle;
	}
	public String getBackDate() {
		return backDate;
	}
	public void setBackDate(String backDate) {
		this.backDate = backDate;
	}
	public double getEarningRate() {
		return earningRate;
	}
	public void setEarningRate(double earningRate) {
		this.earningRate = earningRate;
	}
	@Override
	public String toString() {
		return "BackTestListVO [portNum=" + portNum + ", backTitle=" + backTitle + ", backDate=" + backDate
				+ ", earningRate=" + earningRate + "]";
	}

	
	
	
	
	
}
