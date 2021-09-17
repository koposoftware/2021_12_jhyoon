package kr.ac.kopo.backtest.vo;
//종목 매매 결과 가져오는VO
public class BackTestTransResultVO {
	private int backNo;
	private int portNum;
	private String userId;
	private String stockName;
	private String stockCode;
	private String backDate;
	private String transKind;
	private int stockPrice;
	private int stockCnt;
	private int buyPrice;
	private int sellPrice;
	private String buyDate;
	private String sellDate;
	private int totalStockCnt;
	private int totalStockPrice;
	private int salePrice;
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
	public String getBackDate() {
		return backDate;
	}
	public void setBackDate(String backDate) {
		this.backDate = backDate;
	}
	public String getTransKind() {
		return transKind;
	}
	public void setTransKind(String transKind) {
		this.transKind = transKind;
	}
	public int getStockPrice() {
		return stockPrice;
	}
	public void setStockPrice(int stockPrice) {
		this.stockPrice = stockPrice;
	}
	public int getStockCnt() {
		return stockCnt;
	}
	public void setStockCnt(int stockCnt) {
		this.stockCnt = stockCnt;
	}
	public int getBuyPrice() {
		return buyPrice;
	}
	public void setBuyPrice(int buyPrice) {
		this.buyPrice = buyPrice;
	}
	public int getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(int sellPrice) {
		this.sellPrice = sellPrice;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public String getSellDate() {
		return sellDate;
	}
	public void setSellDate(String sellDate) {
		this.sellDate = sellDate;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public double getEarningRate() {
		return earningRate;
	}
	public void setEarningRate(double earningRate) {
		this.earningRate = earningRate;
	}
	
	
	
	public int getTotalStockCnt() {
		return totalStockCnt;
	}
	public void setTotalStockCnt(int totalStockCnt) {
		this.totalStockCnt = totalStockCnt;
	}
	public int getTotalStockPrice() {
		return totalStockPrice;
	}
	public void setTotalStockPrice(int totalStockPrice) {
		this.totalStockPrice = totalStockPrice;
	}
	@Override
	public String toString() {
		return "BackTestTransResultVO [backNo=" + backNo + ", portNum=" + portNum + ", userId=" + userId
				+ ", stockName=" + stockName + ", stockCode=" + stockCode + ", backDate=" + backDate + ", transKind="
				+ transKind + ", stockPrice=" + stockPrice + ", stockCnt=" + stockCnt + ", buyPrice=" + buyPrice
				+ ", sellPrice=" + sellPrice + ", buyDate=" + buyDate + ", sellDate=" + sellDate + ", totalStockCnt="
				+ totalStockCnt + ", totalStockPrice=" + totalStockPrice + ", salePrice=" + salePrice + ", earningRate="
				+ earningRate + "]";
	}

	
		
	
	
}
