package kr.ac.kopo.member.vo;

public class OneClubPBVO {
	private String empNo;
	private String empId;
	private String empPwd;
	private String empName;
	private String empGrade;
	private String empField;
	private String empSectors;
	private String empImg;
	private String empDescri;
	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getEmpPwd() {
		return empPwd;
	}
	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpGrade() {
		return empGrade;
	}
	public void setEmpGrade(String empGrade) {
		this.empGrade = empGrade;
	}
	public String getEmpField() {
		return empField;
	}
	public void setEmpField(String empField) {
		this.empField = empField;
	}
	public String getEmpSectors() {
		return empSectors;
	}
	public void setEmpSectors(String empSectors) {
		this.empSectors = empSectors;
	}
	public String getEmpImg() {
		return empImg;
	}
	public void setEmpImg(String empImg) {
		this.empImg = empImg;
	}
	public String getEmpDescri() {
		return empDescri;
	}
	public void setEmpDescri(String empDescri) {
		this.empDescri = empDescri;
	}
	@Override
	public String toString() {
		return "OneClubPBVO [empNo=" + empNo + ", empId=" + empId + ", empPwd=" + empPwd + ", empName=" + empName
				+ ", empGrade=" + empGrade + ", empField=" + empField + ", empSectors=" + empSectors + ", empImg="
				+ empImg + ", empDescri=" + empDescri + "]";
	}
	

	
	
}
