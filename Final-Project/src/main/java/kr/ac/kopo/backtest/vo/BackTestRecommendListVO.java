package kr.ac.kopo.backtest.vo;

import java.util.List;

public class BackTestRecommendListVO {
	private int portNum;
	private String userId;
	private int stockCnt;
	private List<BackTestRecommendVO> recommendList;

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

	public int getStockCnt() {
		return stockCnt;
	}

	public void setStockCnt(int stockCnt) {
		this.stockCnt = stockCnt;
	}

	public List<BackTestRecommendVO> getRecommendList() {
		return recommendList;
	}

	public void setRecommendList(List<BackTestRecommendVO> recommendList) {
		this.recommendList = recommendList;
	}

}
