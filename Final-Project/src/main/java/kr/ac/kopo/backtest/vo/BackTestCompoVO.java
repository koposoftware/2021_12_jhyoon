package kr.ac.kopo.backtest.vo;

import java.util.Arrays;

public class BackTestCompoVO {

	private String backTitle;				//	제목
	private String backDescript;            //	설명
	private String backStartAsset;          //	운용자금
	private String backStartDate;           //	시작일
	private String backEndDate;             //	종료일
	private String backFeeRate;             //	수수료율
	private String backSlippage;            //	슬리피지
	private String backTaxRate;             //	거래세금
	private String backStockCnt;            //	종목수
	private String backRebalCycle;          //	리밸런싱 주기
	private String backInvestRate;          //	투자비중
	private String backMarket;              //	거래시장
	private String backCare;                //	관리종목
	private String backManage;              //	감리종목
	private String backPreferred;           //	우선주 종목
	private String backEtf;                 //	ETF	종목
	private String backCashFlow;            //	영업현금흐름
	private String backProfit;              //	당기순이익
	private String backTransAmt;            //	거래대금
	private String backAmt;                 //	거래대금 부등호
	private String backMarketCap;           //	시가총액
	private String backCap;                 //	시가총액 부등호
	private String backBuyPrice;            //	매수 가격
	private String backSellPrice;           //	매도 가격
	private String backMinPriceS;           //	매매 가격 범위
	private String backMinPriceV;           //	매매 가격범위종류(시가/종가)
	private String backMinPrice;            //	매매 가격 
	private String backCapUpDown;           //	시가총액 상/하위
	private String backCapRate;             //	시가총액 비율
	private String[] backCondiVal;            //	조건식
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
	public String getBackFeeRate() {
		return backFeeRate;
	}
	public void setBackFeeRate(String backFeeRate) {
		this.backFeeRate = backFeeRate;
	}
	public String getBackSlippage() {
		return backSlippage;
	}
	public void setBackSlippage(String backSlippage) {
		this.backSlippage = backSlippage;
	}
	public String getBackTaxRate() {
		return backTaxRate;
	}
	public void setBackTaxRate(String backTaxRate) {
		this.backTaxRate = backTaxRate;
	}
	public String getBackStockCnt() {
		return backStockCnt;
	}
	public void setBackStockCnt(String backStockCnt) {
		this.backStockCnt = backStockCnt;
	}
	public String getBackRebalCycle() {
		return backRebalCycle;
	}
	public void setBackRebalCycle(String backRebalCycle) {
		this.backRebalCycle = backRebalCycle;
	}
	public String getBackInvestRate() {
		return backInvestRate;
	}
	public void setBackInvestRate(String backInvestRate) {
		this.backInvestRate = backInvestRate;
	}
	public String getBackMarket() {
		return backMarket;
	}
	public void setBackMarket(String backMarket) {
		this.backMarket = backMarket;
	}
	public String getBackCare() {
		return backCare;
	}
	public void setBackCare(String backCare) {
		this.backCare = backCare;
	}
	public String getBackManage() {
		return backManage;
	}
	public void setBackManage(String backManage) {
		this.backManage = backManage;
	}
	public String getBackPreferred() {
		return backPreferred;
	}
	public void setBackPreferred(String backPreferred) {
		this.backPreferred = backPreferred;
	}
	public String getBackEtf() {
		return backEtf;
	}
	public void setBackEtf(String backEtf) {
		this.backEtf = backEtf;
	}
	public String getBackCashFlow() {
		return backCashFlow;
	}
	public void setBackCashFlow(String backCashFlow) {
		this.backCashFlow = backCashFlow;
	}
	public String getBackProfit() {
		return backProfit;
	}
	public void setBackProfit(String backProfit) {
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
	public String getBackCapRate() {
		return backCapRate;
	}
	public void setBackCapRate(String backCapRate) {
		this.backCapRate = backCapRate;
	}
	public String[] getBackCondiVal() {
		return backCondiVal;
	}
	public void setBackCondiVal(String[] backCondiVal) {
		this.backCondiVal = backCondiVal;
	}
	@Override
	public String toString() {
		return "BackTestCompoVO [backTitle=" + backTitle + ", backDescript=" + backDescript + ", backStartAsset="
				+ backStartAsset + ", backStartDate=" + backStartDate + ", backEndDate=" + backEndDate
				+ ", backFeeRate=" + backFeeRate + ", backSlippage=" + backSlippage + ", backTaxRate=" + backTaxRate
				+ ", backStockCnt=" + backStockCnt + ", backRebalCycle=" + backRebalCycle + ", backInvestRate="
				+ backInvestRate + ", backMarket=" + backMarket + ", backCare=" + backCare + ", backManage="
				+ backManage + ", backPreferred=" + backPreferred + ", backEtf=" + backEtf + ", backCashFlow="
				+ backCashFlow + ", backProfit=" + backProfit + ", backTransAmt=" + backTransAmt + ", backAmt="
				+ backAmt + ", backMarketCap=" + backMarketCap + ", backCap=" + backCap + ", backBuyPrice="
				+ backBuyPrice + ", backSellPrice=" + backSellPrice + ", backMinPriceS=" + backMinPriceS
				+ ", backMinPriceV=" + backMinPriceV + ", backMinPrice=" + backMinPrice + ", backCapUpDown="
				+ backCapUpDown + ", backCapRate=" + backCapRate + ", backCondiVal=" + Arrays.toString(backCondiVal)
				+ "]";
	}

	
	
	
}
