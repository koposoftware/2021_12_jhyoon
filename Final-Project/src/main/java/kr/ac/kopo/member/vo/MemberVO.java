package kr.ac.kopo.member.vo;

public class MemberVO {

	private String userId;
	private String userPwd;
	private String userResistNum;
	private String userName;
	private String userPost;
	private String userAddr;
	private String userAddr2;
	private String userTel;
	private String userEmail;
	private String userRegDate;
	private String empId;
	private String userAuth;
	private int enabled;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserResistNum() {
		return userResistNum;
	}
	public void setUserResistNum(String userResistNum) {
		this.userResistNum = userResistNum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPost() {
		return userPost;
	}
	public void setUserPost(String userPost) {
		this.userPost = userPost;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserAddr2() {
		return userAddr2;
	}
	public void setUserAddr2(String userAddr2) {
		this.userAddr2 = userAddr2;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserRegDate() {
		return userRegDate;
	}
	public void setUserRegDate(String userRegDate) {
		this.userRegDate = userRegDate;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getUserAuth() {
		return userAuth;
	}
	public void setUserAuth(String userAuth) {
		this.userAuth = userAuth;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	@Override
	public String toString() {
		return "MemberVO [userId=" + userId + ", userPwd=" + userPwd + ", userResistNum=" + userResistNum
				+ ", userName=" + userName + ", userPost=" + userPost + ", userAddr=" + userAddr + ", userAddr2="
				+ userAddr2 + ", userTel=" + userTel + ", userEmail=" + userEmail + ", userRegDate=" + userRegDate
				+ ", empId=" + empId + ", userAuth=" + userAuth + ", enabled=" + enabled + "]";
	}
	
	
	
}
