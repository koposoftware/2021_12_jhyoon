package kr.ac.kopo.counsel.vo;

public class CounselVO {
	private int counselNo;
	private int answerNo;
	private String userId;
	private String empNo;
	private String counselCate;
	private int counselPort;
	private String counselTitle;
	private String counselContent;
	private String counselRegDate;
	public int getCounselNo() {
		return counselNo;
	}
	public void setCounselNo(int counselNo) {
		this.counselNo = counselNo;
	}
	public int getAnswerNo() {
		return answerNo;
	}
	public void setAnswerNo(int answerNo) {
		this.answerNo = answerNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}
	public String getCounselCate() {
		return counselCate;
	}
	public void setCounselCate(String counselCate) {
		this.counselCate = counselCate;
	}
	public int getCounselPort() {
		return counselPort;
	}
	public void setCounselPort(int counselPort) {
		this.counselPort = counselPort;
	}
	public String getCounselTitle() {
		return counselTitle;
	}
	public void setCounselTitle(String counselTitle) {
		this.counselTitle = counselTitle;
	}
	public String getCounselContent() {
		return counselContent;
	}
	public void setCounselContent(String counselContent) {
		this.counselContent = counselContent;
	}
	public String getCounselRegDate() {
		return counselRegDate;
	}
	public void setCounselRegDate(String counselRegDate) {
		this.counselRegDate = counselRegDate;
	}
	@Override
	public String toString() {
		return "CounselVO [counselNo=" + counselNo + ", answerNo=" + answerNo + ", userId=" + userId + ", empNo="
				+ empNo + ", counselCate=" + counselCate + ", counselPort=" + counselPort + ", counselTitle="
				+ counselTitle + ", counselContent=" + counselContent + ", counselRegDate=" + counselRegDate + "]";
	}
	
	
	
	
}
