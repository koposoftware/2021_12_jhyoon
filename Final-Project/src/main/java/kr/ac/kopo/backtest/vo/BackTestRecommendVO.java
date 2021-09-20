package kr.ac.kopo.backtest.vo;

public class BackTestRecommendVO {
	private int portNum;
	private String userId;
	private String stockName;
	private String stockCode;
	private String stockDate;
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
	public String getStockName() {
		return stockName;
	}
	public void setStockName(String stockName) {
		this.stockName = stockName;
	}
	public String getStockCode() {
		return stockCode;
	}
	public void setStockCode(String stockCode) {
		this.stockCode = stockCode;
	}
	public String getStockDate() {
		return stockDate;
	}
	public void setStockDate(String stockDate) {
		this.stockDate = stockDate;
	}
	@Override
	public String toString() {
		return "BackTestRecommendVO [portNum=" + portNum + ", userId=" + userId + ", stockName=" + stockName
				+ ", stockCode=" + stockCode + ", stockDate=" + stockDate + "]";
	}
	
	
}
