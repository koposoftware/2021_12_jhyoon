package kr.ac.kopo.backtest.vo;

import java.util.List;

public class BackTestResultSetVO {
	private int portNum;
	private String userId;
	private List<BackTestResultFlucVO> resultList;
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
	public List<BackTestResultFlucVO> getResultList() {
		return resultList;
	}
	public void setResultList(List<BackTestResultFlucVO> resultList) {
		this.resultList = resultList;
	}
	
	
	
	
}
