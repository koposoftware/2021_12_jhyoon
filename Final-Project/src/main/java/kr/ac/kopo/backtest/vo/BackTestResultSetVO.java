package kr.ac.kopo.backtest.vo;

public class BackTestResultSetVO {
	private int portNum;
	private String userId;
	private int startAsset;
	private int finalBal;
	private double earningRate;
	private int profitLoss;
	private double totalCagr;
	private double avgDayFluc;
	private double avgFluc;
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
	public int getStartAsset() {
		return startAsset;
	}
	public void setStartAsset(int startAsset) {
		this.startAsset = startAsset;
	}
	public int getFinalBal() {
		return finalBal;
	}
	public void setFinalBal(int finalBal) {
		this.finalBal = finalBal;
	}
	public double getEarningRate() {
		return earningRate;
	}
	public void setEarningRate(double earningRate) {
		this.earningRate = earningRate;
	}
	public int getProfitLoss() {
		return profitLoss;
	}
	public void setProfitLoss(int profitLoss) {
		this.profitLoss = profitLoss;
	}
	public double getTotalCagr() {
		return totalCagr;
	}
	public void setTotalCagr(double totalCagr) {
		this.totalCagr = totalCagr;
	}
	public double getAvgDayFluc() {
		return avgDayFluc;
	}
	public void setAvgDayFluc(double avgDayFluc) {
		this.avgDayFluc = avgDayFluc;
	}
	public double getAvgFluc() {
		return avgFluc;
	}
	public void setAvgFluc(double avgFluc) {
		this.avgFluc = avgFluc;
	}
	@Override
	public String toString() {
		return "BackTestResultSetVO [portNum=" + portNum + ", userId=" + userId + ", startAsset=" + startAsset
				+ ", finalBal=" + finalBal + ", earningRate=" + earningRate + ", profitLoss=" + profitLoss
				+ ", totalCagr=" + totalCagr + ", avgDayFluc=" + avgDayFluc + ", avgFluc=" + avgFluc + "]";
	}
	
	
	

	 
	
	
	
}
