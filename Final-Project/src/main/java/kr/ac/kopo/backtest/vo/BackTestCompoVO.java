package kr.ac.kopo.backtest.vo;

public class BackTestCompoVO {
	private int portNum;      // 포트 번호
	private int backtestCnt; // 유저 test번호
	private String userId; // 유저아이디
	private String backTitle; // 제목
	private String backDescript; // 설명
	private String backStartAsset; // 운용자금
	private String backStartDate; // 시작일
	private String backEndDate; // 종료일
	private double backFeeRate; // 수수료율
	private double backSlippage; // 슬리피지
	private double backTaxRate; // 거래세금
	private int backStockCnt; // 종목수
	private int backRebalCycle; // 리밸런싱 주기
	private double backInvestRate; // 투자비중
	private String backMarket; // 거래시장
	private int backCare; // 관리종목
	private int backManage; // 감리종목
	private int backPreferred; // 우선주 종목
	private int backEtf; // ETF 종목
	private int backCashFlow; // 영업현금흐름
	private int backProfit; // 당기순이익
	private String backTransAmt; // 거래대금
	private String backAmt; // 거래대금 부등호
	private String backMarketCap; // 시가총액
	private String backCap; // 시가총액 부등호
	private String backBuyPrice; // 매수 가격
	private String backSellPrice; // 매도 가격
	private String backMinPriceS; // 매매 가격 범위
	private String backMinPriceV; // 매매 가격범위종류(시가/종가)
	private String backMinPrice; // 매매 가격
	private String backCapUpDown; // 시가총액 상/하위
	private double backCapRate; // 시가총액 비율
	private String backPBR; // 조건식
	private String backPER; // 조건식
	private String backPSR; // 조건식
	private String backPCR; // 조건식
	private String backROA; // 조건식
	private String backROE; // 조건식
	private String backROS; // 조건식
	private String backEBITDA; // 조건식
	private String backCFPS; // 조건식

	
	
	public int getPortNum() {
		return portNum;
	}

	public void setPortNo(int portNum) {
		this.portNum = portNum;
	}

	public int getBacktestCnt() {
		return backtestCnt;
	}

	public void setBacktestCnt(int backtestCnt) {
		this.backtestCnt = backtestCnt;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getBackTitle() {
		return backTitle;
	}

	public void setBackTitle(String backTitle) {
		this.backTitle = backTitle;
	}

	public String getBackDescript() {
		return backDescript;
	}

	public void setBackDescript(String backDescript) {
		this.backDescript = backDescript;
	}

	public String getBackStartAsset() {
		return backStartAsset;
	}

	public void setBackStartAsset(String backStartAsset) {
		this.backStartAsset = backStartAsset;
	}

	public String getBackStartDate() {
		return backStartDate;
	}

	public void setBackStartDate(String backStartDate) {
		this.backStartDate = backStartDate;
	}

	public String getBackEndDate() {
		return backEndDate;
	}

	public void setBackEndDate(String backEndDate) {
		this.backEndDate = backEndDate;
	}

	public double getBackFeeRate() {
		return backFeeRate;
	}

	public void setBackFeeRate(double backFeeRate) {
		this.backFeeRate = backFeeRate;
	}

	public double getBackSlippage() {
		return backSlippage;
	}

	public void setBackSlippage(double backSlippage) {
		this.backSlippage = backSlippage;
	}

	public double getBackTaxRate() {
		return backTaxRate;
	}

	public void setBackTaxRate(double backTaxRate) {
		this.backTaxRate = backTaxRate;
	}

	public int getBackStockCnt() {
		return backStockCnt;
	}

	public void setBackStockCnt(int backStockCnt) {
		this.backStockCnt = backStockCnt;
	}

	public int getBackRebalCycle() {
		return backRebalCycle;
	}

	public void setBackRebalCycle(int backRebalCycle) {
		this.backRebalCycle = backRebalCycle;
	}

	public double getBackInvestRate() {
		return backInvestRate;
	}

	public void setBackInvestRate(double backInvestRate) {
		this.backInvestRate = backInvestRate;
	}

	public String getBackMarket() {
		return backMarket;
	}

	public void setBackMarket(String backMarket) {
		this.backMarket = backMarket;
	}

	public int getBackCare() {
		return backCare;
	}

	public void setBackCare(int backCare) {
		this.backCare = backCare;
	}

	public int getBackManage() {
		return backManage;
	}

	public void setBackManage(int backManage) {
		this.backManage = backManage;
	}

	public int getBackPreferred() {
		return backPreferred;
	}

	public void setBackPreferred(int backPreferred) {
		this.backPreferred = backPreferred;
	}

	public int getBackEtf() {
		return backEtf;
	}

	public void setBackEtf(int backEtf) {
		this.backEtf = backEtf;
	}

	public int getBackCashFlow() {
		return backCashFlow;
	}

	public void setBackCashFlow(int backCashFlow) {
		this.backCashFlow = backCashFlow;
	}

	public int getBackProfit() {
		return backProfit;
	}

	public void setBackProfit(int backProfit) {
		this.backProfit = backProfit;
	}

	public String getBackTransAmt() {
		return backTransAmt;
	}

	public void setBackTransAmt(String backTransAmt) {
		this.backTransAmt = backTransAmt;
	}

	public String getBackAmt() {
		return backAmt;
	}

	public void setBackAmt(String backAmt) {
		this.backAmt = backAmt;
	}

	public String getBackMarketCap() {
		return backMarketCap;
	}

	public void setBackMarketCap(String backMarketCap) {
		this.backMarketCap = backMarketCap;
	}

	public String getBackCap() {
		return backCap;
	}

	public void setBackCap(String backCap) {
		this.backCap = backCap;
	}

	public String getBackBuyPrice() {
		return backBuyPrice;
	}

	public void setBackBuyPrice(String backBuyPrice) {
		this.backBuyPrice = backBuyPrice;
	}

	public String getBackSellPrice() {
		return backSellPrice;
	}

	public void setBackSellPrice(String backSellPrice) {
		this.backSellPrice = backSellPrice;
	}

	public String getBackMinPriceS() {
		return backMinPriceS;
	}

	public void setBackMinPriceS(String backMinPriceS) {
		this.backMinPriceS = backMinPriceS;
	}

	public String getBackMinPriceV() {
		return backMinPriceV;
	}

	public void setBackMinPriceV(String backMinPriceV) {
		this.backMinPriceV = backMinPriceV;
	}

	public String getBackMinPrice() {
		return backMinPrice;
	}

	public void setBackMinPrice(String backMinPrice) {
		this.backMinPrice = backMinPrice;
	}

	public String getBackCapUpDown() {
		return backCapUpDown;
	}

	public void setBackCapUpDown(String backCapUpDown) {
		this.backCapUpDown = backCapUpDown;
	}

	public double getBackCapRate() {
		return backCapRate;
	}

	public void setBackCapRate(double backCapRate) {
		this.backCapRate = backCapRate;
	}

	public String getBackPBR() {
		return backPBR;
	}

	public void setBackPBR(String backPBR) {
		this.backPBR = backPBR;
	}

	public String getBackPER() {
		return backPER;
	}

	public void setBackPER(String backPER) {
		this.backPER = backPER;
	}

	public String getBackPSR() {
		return backPSR;
	}

	public void setBackPSR(String backPSR) {
		this.backPSR = backPSR;
	}

	public String getBackPCR() {
		return backPCR;
	}

	public void setBackPCR(String backPCR) {
		this.backPCR = backPCR;
	}

	public String getBackROA() {
		return backROA;
	}

	public void setBackROA(String backROA) {
		this.backROA = backROA;
	}

	public String getBackROE() {
		return backROE;
	}

	public void setBackROE(String backROE) {
		this.backROE = backROE;
	}

	public String getBackROS() {
		return backROS;
	}

	public void setBackROS(String backROS) {
		this.backROS = backROS;
	}

	public String getBackEBITDA() {
		return backEBITDA;
	}

	public void setBackEBITDA(String backEBITDA) {
		this.backEBITDA = backEBITDA;
	}

	public String getBackCFPS() {
		return backCFPS;
	}

	public void setBackCFPS(String backCFPS) {
		this.backCFPS = backCFPS;
	}

	@Override
	public String toString() {
		return "BackTestCompoVO [portNum=" + portNum + ", backtestCnt=" + backtestCnt + ", userId=" + userId
				+ ", backTitle=" + backTitle + ", backDescript=" + backDescript + ", backStartAsset=" + backStartAsset
				+ ", backStartDate=" + backStartDate + ", backEndDate=" + backEndDate + ", backFeeRate=" + backFeeRate
				+ ", backSlippage=" + backSlippage + ", backTaxRate=" + backTaxRate + ", backStockCnt=" + backStockCnt
				+ ", backRebalCycle=" + backRebalCycle + ", backInvestRate=" + backInvestRate + ", backMarket="
				+ backMarket + ", backCare=" + backCare + ", backManage=" + backManage + ", backPreferred="
				+ backPreferred + ", backEtf=" + backEtf + ", backCashFlow=" + backCashFlow + ", backProfit="
				+ backProfit + ", backTransAmt=" + backTransAmt + ", backAmt=" + backAmt + ", backMarketCap="
				+ backMarketCap + ", backCap=" + backCap + ", backBuyPrice=" + backBuyPrice + ", backSellPrice="
				+ backSellPrice + ", backMinPriceS=" + backMinPriceS + ", backMinPriceV=" + backMinPriceV
				+ ", backMinPrice=" + backMinPrice + ", backCapUpDown=" + backCapUpDown + ", backCapRate=" + backCapRate
				+ ", backPBR=" + backPBR + ", backPER=" + backPER + ", backPSR=" + backPSR + ", backPCR=" + backPCR
				+ ", backROA=" + backROA + ", backROE=" + backROE + ", backROS=" + backROS + ", backEBITDA="
				+ backEBITDA + ", backCFPS=" + backCFPS + "]";
	}



}
