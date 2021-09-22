<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<!-- Head 구성  -->

<title></title>
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
<link href="${ pageContext.request.contextPath}/resources/css/backTestResult.css" rel="stylesheet">
<script
	src="${ pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<!-- Custom -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#resultTabMenu0').click(function() {
			changeResultTab(0)
		})
		$('#resultTabMenu1').click(function() {
			changeResultTab(1)
		})
		$('#resultTabMenu2').click(function() {
			changeResultTab(2)
		})
		$('#resultTabMenu3').click(function() {
			changeResultTab(3)
		})
		$('#resultTabMenu4').click(function() {
			changeResultTab(4)
		})

	})
	function changeResultTab(num) {
		for (var i = 0; i < 5; i++) {
			document.getElementById("resultTabMenu" + i.toString()).className = "";
			document.getElementById("PortResultSection" + i.toString()).style.display = "none";
		}
		document.getElementById("resultTabMenu" + num).className = "on";
		document.getElementById("PortResultSection" + num.toString()).style.display = "";
	}
</script>
		<script type="text/javascript">
					function editMode(f) {
						if (f) {
							$('.edit_title').css('display', 'block')
							$('.view_title').css('display', 'none')
						} else {
							$('.edit_title').css('display', 'none')
							$('.view_title').css('display', 'block')
						}
					}
					function editDescMode(f) {
						if (f) {
							$('.edit_desc').css('display', 'block')
							$('.view_desc').css('display', 'none')
						} else {
							$('.edit_desc').css('display', 'none')
							$('.view_desc').css('display', 'block')
						}
					}

					function sendEditContent(v, data) {
						if (v == 1) {
							var title = $('#viewTitle').text()
							if (title != data) {
								$('#viewTitle').text(data)
								$
										.ajax({
											'type' : 'POST',
											'url' : "${ pageContext.request.contextPath }/backtest/edit",
											'data' : {
												"portNum" : '${compo.portNum}',
												"backTitle" : encodeURIComponent(data),
												"backDescript" : '${compo.backDescript}'
											}
										})
							}
						}
						if (v == 2) {
							var title = $('#viewDesc').text()
							if (title != data) {
								$('#viewDesc').text(data)
								$
										.ajax({
											'type' : 'POST',
											'url' : "${ pageContext.request.contextPath }/backtest/edit",
											'data' : {
												"portNum" : '${compo.portNum}',
												"backTitle" : '${compo.backTitle}',
												"backDescript" : encodeURIComponent(data)
											}
										})
							}
						}
					}
				</script>

<!-- Head 구성 끝 -->
</head>
<body>
	<!-- header  -->
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
	<div class="area_location" id="locNewPort" style="display: block">
		<ul>
			<li class="fl">
				<p class="fl title">내 백테스팅 포트폴리오 만들기</p>
				<p class="fl info">다양한 조건을 넣어 나만의 주식투자 전략을 검증해보세요</p>
			</li>
			<li class="fr">
				<p class="crumbs">
					One클럽<span>></span>백테스팅 포트폴리오 만들기
				</p>
			</li>
		</ul>
	</div>
	<!-- header 끝 -->
	<!-- section 시작 -->
	<section>
		<div class="area_content">
			<div class="section_flowTab">
				<ul>
					<li id="tabMenu0" class="off_flow">
						<p>Step 1. 기본 설정</p> <span>기본 조건들을 설정하세요.</span>
					</li>
					<li id="tabMenu1" class="off_flow">
						<p>Step 2. 매매조건 설정</p> <span>매수/매도조건을 설정하세요.</span>
					</li>

					<li id="tabMenu2" class="off_flow">
						<p>Step 3. 가치측정 조건 설정</p> <span>기업 가치를 판단할 조건을 설정하세요</span>
					</li>

					<li id="tabMenu3" style="cursor: pointer;" class="on">
						<p>Step 4. 백테스팅 결과</p> <span>백테스팅 포트폴리오가 완성되었습니다.</span>
					</li>
				</ul>
			</div>
		</div>

		<div class="selection_Tab">
			<div class="content-by-step">
				<input type="hidden" name="userId" value="${userVO.userId}"
					disabled="disabled">
				<style>

</style>
				<div id="selection3" style="display: block">
					<div class="row vertical-tab">
						<div class="col-md-8">
							<p class="fl portNum_large" id="PortID" style="margin-top: 4px">백테스트
								리포트</p>
							<p class="fl font_20px view_title" id="viewTitle"
								style="margin-top: 4px; line-height: 40px; margin-left: 5px">${compoVO.backTitle}</p>
							<p class="fl portName_large view_title" id="pPortNameEdit">
								<img
									src="${pageContext.request.contextPath}/resources/img/icn_editPortname.png"
									style="cursor: pointer" class="nameInputArea"
									onclick="editMode(true);">
							</p>
							<input name="backTitle" type="text" id="editTitle"
								style="width: 44%; margin-left: 10px"
								class="titleInput edit_title" value="${compoVO.backTitle}" />
							<button class="btn_white edit_title edit_bnt" type="button"
								onclick="editMode(false);sendEditContent(1,$('#editTitle').val())">수정</button>
							<br>
							<div class="fl portInfo_full view_desc" id="divPortDesc">
								<p class="fl infotxt_13px66" id="viewDesc">${compoVO.backDescript}</p>
								<p class="fl infotxt_13px66 ml8px " id="pPortDescEdit">
									<img
										src="${pageContext.request.contextPath}/resources/img/icn_editPortname.png"
										style="cursor: pointer" class="descInputArea"
										onclick="editDescMode(true);">
								</p>
							</div>
							<input name="backDescript" id="editDesc" type="text"
								style="width: 80%; margin-left: 0px;"
								class="titleInput edit_desc" value="${compoVO.backDescript}" />
							<button class="btn_white edit_desc edit_bnt" type="button"
								onclick="editDescMode(false);sendEditContent(2, $('#editDesc').val())">수정</button>





						</div>
						<div class="col-md-4">
							<div class="box_ctrlBtns type-2">
								<ul>
									<!-- 새포트만들기 -->
									<li class="btn_popSide sidebg_new"
										onclick="location.href='/GenPro/Port.aspx';"><img
										src="${pageContext.request.contextPath}/resources/img/icn_portNew_white.png"><span>새로 하기</span></li>
									<!-- //새포트만들기 -->
									<!-- 포트수정 -->
									<li class="btn_popSide sidebg_modify" id="btnPortEdit" style="">
										<img
										src="${pageContext.request.contextPath}/resources/img/icn_portModify_white.png"><span>수정 하기
									</li>
									<!-- //포트수정 -->
									<!-- 포트복사 : 새포트 버튼이 있을 경우 -->
									<li class="btn_popSide sidebg_copy" id="btnPortCopy"><img
										src="${pageContext.request.contextPath}/resources/img/icn_portCopy_white.png"><span>조건 복사</span></li>
									<!-- //포트복사 -->
									<!-- 포트삭제 -->
									<li class="btn_popSide sidebg_del" id="btnPortDelete"><img
										src="${pageContext.request.contextPath}/resources/img/icn_delete_white.png"><span>삭제 하기</span></li>
									<!-- //포트삭제 -->
								</ul>
							</div>
						</div>
					</div>
					<div class="fullDetail_tabBox">
						<ul style="padding-left: 0px; margin-bottom: 0px;">
							<li id="resultTabMenu0" class="on">종합결과</li>
							<li id="resultTabMenu1" class="">매매결과</li>
							<li id="resultTabMenu2" class="">수익률</li>
							<li id="resultTabMenu3" class="">매매종목 정보</li>
							<li id="resultTabMenu4" class="">거래내역</li>
						</ul>
					</div>
					<div id="PortResultSection0" class="result_section" style="height: 1000px; border: 0px">
						<div class="row vertical-tab">
							<div class="col-md-6" style="width: 50%">
								<ul style="padding-left: 0;">
                                <table class="tbl_vertical total_profit" style="" name="tablePortNumSummary" data-val="PORT">
                                    <colgroup>
                                        <col style="width: 50%">
                                        <col style="width: 50%">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                          	<th style="border-top:1px solid #ddd"><span class="tblTotal">백테스트 신호등</span></th>
                                          <c:choose>
		                                     <c:when test="${totalResult.earningRate gt 10 }">
                                       	   <td class="total_td" style="background-color: #fff;"><span class="total_span" style="color:green">매우 양호</span><img class="img_total" src="${pageContext.request.contextPath}/resources/img/greenLight.png"></td>
		                                     </c:when>
		                                     <c:when test="${totalResult.earningRate lt 0 }">
                                       	   <td class="total_td" style="background-color: #fff;"><span class="total_span" style="color:rgb(248, 56, 56);">위험</span><img class="img_total" src="${pageContext.request.contextPath}/resources/img/red-light.png"></td>
		                                     </c:when>
											 <c:otherwise>
                                       	   <td class="total_td" style="background-color: #fff;"><span class="total_span"  style="color:rgb(255, 158, 1);">보통</span><img  class="img_total" src="${pageContext.request.contextPath}/resources/img/orangelight.png"></td>
											 </c:otherwise>                                          
                                          </c:choose>
                                          </tr>
                                    
                                    
                                        <tr style="border-top: 1px solid #ddd; border-bottom: 1px solid #ddd">
                                            <th style="padding:23px; background-color: #fff; "><span class="main_tbl">총 수익률</span></th>
                                             <c:choose>
                                            	<c:when test="${totalResult.earningRate lt 0 }">
                                            	<td class="taC" id="PortBTRTM1"  style="padding:23px; background-color: #fff;"><span class="txt_minus main_tbl">${totalResult.earningRate}%</span></td>
                                            	</c:when>
                                            	<c:otherwise>
                                            	<td class="taC  " id="PortBTRTM1"><span class="txt_plus main_tbl">${totalResult.earningRate}%</span></td>
                                            	</c:otherwise>
                                           	</c:choose>
                                        </tr>
                                        
                                    </thead>
                                    <tbody>
                                    	 <tr class="th-align">
                                        	<th ><span class="tblTotal">투자 원금(총 투자평잔)</span></th>
                                            <td class="taC" id="PortBTRTD1" style="text-align: right;"><span class="tblTotal"><fmt:formatNumber value="${totalResult.startAsset}" pattern="#,###"/>원</span></td>
                                        </tr>
                                        <c:choose>
                                            	<c:when test="${totalResult.earningRate lt 0 }">
                                            	 <tr class="th-align">
                                            	 <th><span class="tblTotal">종목 실현 손익금</span></th>
                                           	 	 <td class="taC" id="PortBTRTM1" style="text-align: right;"><span class="txt_minus tblTotal"><fmt:formatNumber value="${totalResult.profitLoss}" pattern="#,###"/>원</span></td>
                                           	 	 </tr>
                                            	 <tr class="th-align">
                                            	 <th><span class="tblTotal">현재 총 자산</span></th>
                                            	 <td class="taC" id="PortBTRTW1" style="text-align: right;"><span class="txt_minus tblTotal"><fmt:formatNumber value="${totalResult.finalBal}" pattern="#,###"/>원</span></td>
                                            	  <tr class="th-align" style="border-bottom: 1px solid #ddd;">
                                            	 <th><span class="tblTotal">일 평균 수익률</span></th>
                                           	 	 <td class="taC" id="PortBTRTM1" style="text-align: right; boarder-bottom:1px solid #ddd;"><span class="txt_minus tblTotal">${totalResult.avgDayFluc}%</span></td>
                                           	 	 </tr>
                                            	 </tr>
                                            	</c:when>
                                            	<c:otherwise>
                                            	 <tr class="th-align">
                                            	 <th><span class="tblTotal">종목 실현 손익금</span></th>
                                            	<td class="taC" id="PortBTRTW1" style="text-align: right;"><span class="txt_plus tblTotal"><fmt:formatNumber value="${totalResult.finalBal}" pattern="#,###"/>원</span></td>
                                            	</tr>
                                            	 <tr class="th-align">
                                            	 <th><span class="tblTotal">현재 총 자산</span></th>
                                           	 	 <td class="taC" id="PortBTRTM1" style="text-align: right;"><span class="txt_plus tblTotal"><fmt:formatNumber value="${totalResult.profitLoss}" pattern="#,###"/>원</span></td>
                                           	 	 </tr>
                                            	 <tr class="th-align" style="border-bottom: 1px solid #ddd;">
                                            	 <th><span class="tblTotal">일 평균 수익률</span></th>
                                           	 	 <td class="taC" id="PortBTRTM1" style="text-align: right; boarder-bottom:1px solid #ddd;"><span class="txt_plus tblTotal">${totalResult.avgDayFluc}%</span></td>
                                           	 	 </tr>
                                            	</c:otherwise>
                                          </c:choose>
                                          
                                    
				
                                    </tbody>
                                </table>
                                
                            </ul>
							</div>
							<div class="col-md-6 chart_total"  >
                                        <ul style="padding-left: 0px;">
                                            <div class="chart_data" style="height:500px;"><button class="btn_acc btn_white" onclick="changeChart(true)">수익률</button><button class="btn_earn btn_white" style="display:none;" onclick="changeChart(false)">계좌</button>
  												<span class="font_10px btn_acc" style="float:left">(원)</span><canvas id="accChart"class="btn_acc"></canvas><span class="font_10px btn_acc" style="float:right;">(년월)</span>
  												<span class="font_10px btn_earn" style="display:none; float:left">(%)</span><canvas id="earningChart" class="btn_earn" style="display:none;"></canvas><span class="font_10px btn_earn" style="display:none; float:right;">(년월)</span>
											</div>
											<li class="subtitle_10px bold taC" >&lt; 계좌 수익률 차트 &gt;</li>
                                        </ul>
                                </div>
						</div>
					<div class="row vertical-tab" style="padding: 20px 14px; border-top: 1px solid #ddd; border-bottom: 1px solid #ddd">
							<ul>
                                <li class="subtitle_15px bold" style="margin: 40px 0; font-size:30px">기간별 수익률<em id="reserved" style="color:red"></em></li>
                                <table class="tbl_vertical2" style="" name="tablePortNumSummary" >
                                    <colgroup>
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col>
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>최근 거래일</th>
                                            <th>최근 ${compoVO.backRebalCycle}개월</th>
                                            <th>최근 ${compoVO.backRebalCycle*2}개월</th>
                                            <th>최근 ${compoVO.backRebalCycle*3}개월</th>
                                            <th>최근 ${compoVO.backRebalCycle*4}개월</th>
                                            <th>최근 ${compoVO.backRebalCycle*5}개월</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<c:forEach items="${accReverseTotal}" var="acc" varStatus="status">
                                        	<c:if test="${status.count lt 7 }">
                                        		<c:choose>
                                        		<c:when test="${acc.earningRate lt 0}">
                                            	<td class="taC" id="PortBTRTD1"><span class="txt_minus tblRate">${acc.earningRate}%</span></td>
                                        		</c:when>
                                       			<c:when test="${acc.earningRate eq 0}">
                                            	<td class="taC" id="PortBTRTD1"><span class="tblRate">-</span></td>
                                        		</c:when>
                                        		<c:otherwise>
                                            	<td class="taC" id="PortBTRTD1"><span class="txt_plus tblRate">${acc.earningRate}%</span></td>
                                        		</c:otherwise>
                                        		</c:choose>
                                            	</c:if>
                                        	</c:forEach>
                                        </tr>
                                    </tbody>
                                </table>
                            </ul>
						</div>
						
						<div class="fd_subBox">
                                <div class="col-md-6 chart_total2"  >
								<ul style="padding-left: 0px;">
									<li class="subtitle_10px bold taC">&lt; 월 누적 수익률 차트 &gt;</li>
									<div class="chart_data">
										<span class="font_10px" style="float: left">(%)</span>
										<canvas id="dayChart5"></canvas>
										<span class="font_10px" style="float: right;">(월)</span>
									</div>
								</ul>
							</div>
                                <div class="col-md-6 chart_total2" >
                                     <ul style="padding-left: 0px;">
											<li class="subtitle_10px bold taC" >&lt; 일별 누적수익률 차트 &gt;</li>
                                            <div class="chart_data">
  											<span class="font_10px" style= float:left">(%)</span>	
  											<canvas id="dayChart" ></canvas>
  											<span class="font_10px" style="float:right;">(년월)</span>
											</div>
                                        </ul>
                                </div>
                         </div>
                         
                         
					</div>
					
					
					
					<div id="PortResultSection1" style="display: none;" class="result_section">
						<!-- 매매 결과 2번째 페이지-->
						<div class="row vertical-tab">
							<div class="col-md-6" style="width: 50%">
								<ul style="padding-left: 0;">
                                <li class="subtitle_15px bold">백테스팅 결과 <em id="reserved" style="color:red"></em></li>
                                <table class="tbl_vertical" style="" name="tablePortNumSummary" data-val="PORT">
                                    <colgroup>
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>투자 원금</th>
                                            <th>현재 자산</th>
                                            <th>수익율</th>
                                            <th>총 손익</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="taC" id="PortBTRTD1"><span class="tblRate"><fmt:formatNumber value="${totalResult.startAsset}" pattern="#,###"/>원</span></td>
                                            <c:choose>
                                            	<c:when test="${totalResult.earningRate lt 0 }">
                                            	 <td class="taC" id="PortBTRTW1"><span class="txt_minus tblRate"><fmt:formatNumber value="${totalResult.finalBal}" pattern="#,###"/>원</span></td>
                                         	    <td class="taC" id="PortBTRTM1"><span class="txt_minus tblRate">${totalResult.earningRate}%</span></td>
                                           	 	 <td class="taC" id="PortBTRTM1"><span class="txt_minus tblRate"><fmt:formatNumber value="${totalResult.profitLoss}" pattern="#,###"/>원</span></td>
                                            	</c:when>
                                            	<c:otherwise>
                                            	<td class="taC" id="PortBTRTW1"><span class="txt_plus tblRate"><fmt:formatNumber value="${totalResult.finalBal}" pattern="#,###"/>원</span></td>
                                         	    <td class="taC" id="PortBTRTM1"><span class="txt_plus tblRate">${totalResult.earningRate}%</span></td>
                                           	 	 <td class="taC" id="PortBTRTM1"><span class="txt_plus tblRate"><fmt:formatNumber value="${totalResult.profitLoss}" pattern="#,###"/>원</span></td>
                                            	</c:otherwise>
                                            </c:choose>
				
                                        </tr>
                                    </tbody>
                                </table>
                                
                            </ul>
							</div>
							<div class="col-md-6" style="width: 50%">
							<ul style="padding-left: 0;">
                                <li class="subtitle_15px bold">수익률 평가 <em id="reserved" style="color:red"></em></li>
                                <table class="tbl_vertical"  name="tablePortNumSummary" data-val="PORT">
                                    <colgroup>
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>CAGR</th>
                                            <th>일 평균 수익률</th>
                                            <th>누적 수익률</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        <c:choose>
                                        <c:when test="${totalResult.totalCagr lt 0}">
                                            <td class="taC" id="PortBTRTD1"><span class="txt_minus tblRate">${totalResult.totalCagr}%</span></td>
                                        </c:when>
                                        <c:otherwise>
                                            <td class="taC" id="PortBTRTD1"><span class="txt_plus tblRate">${totalResult.totalCagr}%</span></td>
                                        </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                        <c:when test="${totalResult.avgDayFluc lt 0}">
                                            <td class="taC" id="PortBTRTW1"><span class="txt_minus tblRate">${totalResult.avgDayFluc}%</span></td>
                                        </c:when>
                                        <c:otherwise>
                                            <td class="taC" id="PortBTRTW1"><span class="txt_plus tblRate">${totalResult.avgDayFluc}%</span></td>
                                        </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                        <c:when test="${totalResult.avgFluc lt 0}">
                                            <td class="taC" id="PortBTRTM1"><span class="txt_minus tblRate">${totalResult.avgFluc}%</span></td>
                                        </c:when>
                                        <c:otherwise>
                                           <td class="taC" id="PortBTRTM1"><span class="txt_plus tblRate">${totalResult.avgFluc}%</span></td>
                                        </c:otherwise>
                                        </c:choose>
                                        </tr>
                                    </tbody>
                                </table>
                                
                            </ul>
							</div>
						</div>
						<div class="row vertical-tab" >
							<ul style="padding: 0 14px;">
							 <li class="subtitle_15px bold">거래 결과<em id="reserved" style="color:red"></em></li>
                                <table class="tbl_vertical2" style="" name="tablePortNumSummary" >
                                    <colgroup>
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col>
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>매매 일자</th>
                                            <th>계좌 평가액(원)</th>
                                            <th>예수금(원)</th>
                                            <th>매수 총계(원)</th>
                                            <th>매도 총계(원)</th>
                                            <th>매매 금액(원)</th>
                                            <th>수익률(%)</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        	<c:forEach items="${accTotal}" var="acc" varStatus="status">
                                        	<tr>
                                            	<td class="taC" id="PortBTRTD1"><span class="tblRate">${acc.backDate}</span></td>
                                            	<td class="taC" id="PortBTRTD1"><span class="tblRate"><fmt:formatNumber value="${acc.totalBal}" pattern="#,###"/></span></td>
                                            	<td class="taC" id="PortBTRTD1"><span class="tblRate"><fmt:formatNumber value="${acc.totalDeposit}" pattern="#,###"/></span></td>
                                            	<td class="taC" id="PortBTRTD1"><span class="txt_minus tblRate">-<fmt:formatNumber value="${acc.buyTotalPrice}" pattern="#,###"/></span></td>
                                            	<td class="taC" id="PortBTRTD1"><span class="txt_plus tblRate">+<fmt:formatNumber value="${acc.sellTotalPrice}" pattern="#,###"/></span></td>
                                            	<td class="taC" id="PortBTRTD1"><span class="tblRate"><fmt:formatNumber value="${acc.totalStockPrice}" pattern="#,###"/></span></td>
                                        		<c:choose>
                                        		<c:when test="${acc.earningRate lt 0}">
                                            	<td class="taC" id="PortBTRTD1"><span class="txt_minus tblRate">${acc.earningRate}</span></td>
                                        		</c:when>
                                        		<c:otherwise>
                                            	<td class="taC" id="PortBTRTD1"><span class="txt_plus tblRate">${acc.earningRate}</span></td>
                                        		</c:otherwise>
                                        		</c:choose>
                                        		</tr>
                                        	</c:forEach>
                                    </tbody>
                                </table>
                            </ul>
						</div>
						
						
						
						
						
					</div>
					<div id="PortResultSection2" style="display: none;"
						class="result_section">
						<div class="row vertical-tab" style="padding: 20px 14px;border-bottom: 1px solid #ddd; margin-bottom: 40px">
							<ul>
                                <li class="subtitle_15px bold" style="margin: 40px 0; font-size:30px">기간별 수익률<em id="reserved" style="color:red"></em></li>
                                <table class="tbl_vertical2" style="" name="tablePortNumSummary" >
                                    <colgroup>
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col style="width: 16.6%">
                                        <col>
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>최근 거래일</th>
                                            <th>최근 ${compoVO.backRebalCycle}개월</th>
                                            <th>최근 ${compoVO.backRebalCycle*2}개월</th>
                                            <th>최근 ${compoVO.backRebalCycle*3}개월</th>
                                            <th>최근 ${compoVO.backRebalCycle*4}개월</th>
                                            <th>최근 ${compoVO.backRebalCycle*5}개월</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<c:forEach items="${accReverseTotal}" var="acc" varStatus="status">
                                        	<c:if test="${status.count lt 7 }">
                                        		<c:choose>
                                        		<c:when test="${acc.earningRate lt 0}">
                                            	<td class="taC" id="PortBTRTD1"><span class="txt_minus tblRate">${acc.earningRate}%</span></td>
                                        		</c:when>
                                       			<c:when test="${acc.earningRate eq 0}">
                                            	<td class="taC" id="PortBTRTD1"><span class="tblRate">-</span></td>
                                        		</c:when>
                                        		<c:otherwise>
                                            	<td class="taC" id="PortBTRTD1"><span class="txt_plus tblRate">${acc.earningRate}%</span></td>
                                        		</c:otherwise>
                                        		</c:choose>
                                            	</c:if>
                                        	</c:forEach>
                                        </tr>
                                    </tbody>
                                </table>
                            </ul>
						</div>
					<div class="fd_subBox">
					 <div class="row vertical-tab" style="padding: 0 14px;">
                        <ul style="padding-left: 0px;">
                                <li class="subtitle_15px bold" style="margin: 40px 0; font-size:30px">일별 누적 수익률 차트<em id="reserved" style="color:red"></em></li>
                                            <div class="chart_data2">
  											<span class="font_10px" style= "float:left">(%)</span>	
  											<canvas id="dayChart2" ></canvas>
  											<span class="font_10px" style="float:right;">(년월)</span>
											</div>
                            </ul>
                            </div>
                             <div class="row vertical-tab" style="padding: 0 14px;">
                            <ul style="padding-left: 0px;">
                                <li class="subtitle_15px bold" style="margin: 40px 0; font-size:30px">월 평균 수익률 차트<em id="reserved" style="color:red"></em></li>
                                            <div class="chart_data2">
  											<span class="font_10px" style= "float:left">(%)</span>	
  											<canvas id="dayChart3"  ></canvas>
  											<span class="font_10px" style="float:right;">(월)</span>
											</div>
                            </ul>
                            </div>
                        </div>
                         <div class="row vertical-tab" style="padding: 0 14px;">
                            <ul style="padding-left: 0px;">
                                <li class="subtitle_15px bold" style="margin: 40px 0; font-size:30px">월 누적 수익률 차트<em id="reserved" style="color:red"></em></li>
                                            <div class="chart_data2">
  											<span class="font_10px" style= "float:left">(%)</span>	
  											<canvas id="dayChart4" ></canvas>
  											<span class="font_10px" style="float:right;">(월)</span>
											</div>
                            </ul>
                            </div>
                        </div>
					</div>
					<div id="PortResultSection3" style="display: none;" class="result_section">
						<!-- 가상매매 수익률 박스 -->
						    <div class="fd_subBox">
                            <ul>
                                <li class="subtitle_15px bold">
                                    <p class="fl subtitle_15px">추천 종목</p>
                                    <p class="fl" style="margin-left: 20px">
                                        <span class="num_rank sidebg_new"></span><em class="infotxt_12px66" style="padding: 0 14px 0 3px">매수 대상종목</em>
                                        <span class="num_rank sidebg_reco"></span><em class="infotxt_12px66" style="padding: 0 14px 0 3px">이미 보유한 종목</em>
                                    </p>
                                    <p class="fr infotxt_12px66" id="PortDateRec">기준일 : ${recommendList[0].stockDate}</p>
                                </li>

                                <table class="tbl_vertical3">
                                    <colgroup>
                                        <col style="width: 25%">
                                        <col style="width: 25%">
                                        <col style="width: 25%">
                                        <col style="width: 25%">
                                    </colgroup>
                                    <tbody id="tblRec">
                                    <c:forEach items="${recommendList}" var="rocommend" varStatus="loop">
                                    <c:if test="${loop.count % 4 eq 1 }"><tr></c:if>
                                    <td class="stockRank"><span class="number_rank">${loop.count}</span>
                                    <c:set var="doneLoop" value="false"/>
                                    <c:forEach items="${lastStockList}" var="lastStock">
									   <c:if test="${not doneLoop}">
									    <c:if test="${rocommend.stockCode eq lastStock.stockCode}">
                                    		<span class="num_rank sidebg_reco"></span>
  						 					<c:set var="doneLoop" value="true"/>
  						 				</c:if>
   									   </c:if>
   									</c:forEach>
                                    	<c:if test="${not doneLoop}">
                                    	<span class="num_rank sidebg_blank"></span>
                                    	</c:if>
                                    
                                    <span class="stockName">${rocommend.stockName}</span><span class="fr stockCode">${rocommend.stockCode}</span></td>
                                    <c:if test="${loop.count % 4 eq 0 }"></tr></c:if>
                                    </c:forEach>
                                </table>
                            </ul>
                        </div>
						<div class="fd_subBox" style="margin-top:30px">
                            <ul>
                                <li class="subtitle_15px bold">
                                    <p class="fl txt_orange subtitle_15px">현재 보유 종목</p>
                                    <p class="fr infotxt_12px66" id="PortDateRemain">기준일 : ${lastStockList[0].backDate}</p>
                                </li>

                                <table class="tbl_vertical">
                                    <colgroup>
                                        <col style="width: 11%">
                                        <col>
                                        <col style="width: 11%">
                                        <col style="width: 11%">
                                        <col style="width: 8%">
                                        <col style="width: 11%">
                                        <col style="width: 11%">
                                        <col style="width: 9%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>매수일</th>
                                            <th>종목명</th>
                                            <th>종목코드</th>
                                            <th>매수가격<em class="priceunit">(원)</em></th>
                                            <th>보유 수량(주)</th>
                                            <th>목표가<em class="priceunit">(원)</em></th>
                                            <th>손절가<em class="priceunit">(원)</em></th>
                                        </tr>
                                    </thead>
                                    <tbody id="tblRemain">
                                    <c:forEach items="${lastStockList}" var="lastStock">
									<tr>
										<td class="taC blR">${lastStock.backDate}</td>
										<td class="taL blR"><span class="bold">${lastStock.stockName }</span></td>
										<td class="taC blR">${lastStock.stockCode }
										<td class="taR blR"><fmt:formatNumber value="${lastStock.buyPrice}" pattern="#,###"/>원</td>
										<td class="taR blR">${lastStock.totalStockCnt}</td>
										<td class="taR blR"><span class="ratetxt_15px txt_plus"><fmt:formatNumber value="${lastStock.buyPrice*1.1}" pattern="#,###"/>원</span></td>
										<td class="taR blR"><span class="ratetxt_15px txt_minus"><fmt:formatNumber value="${lastStock.buyPrice*0.9}" pattern="#,###"/>원</span></td>
									</tr>
									
									</c:forEach>
									</table>
                            </ul>
                        </div>
					</div>
					
					<div id="PortResultSection4" style="display: none;"class="result_section">
					<div class="row vertical-tab" style="padding: 0 14px;">
						<ul style="padding-left: 0px;">
							<li class="subtitle_10px bold taC">&lt; 리밸런싱 별 계좌 총액 대비 매수/매도 차트  &gt;</li>
							<div class="chart_data2">
								<span class="font_10px" style="float: left"">(%)</span>
								<canvas id="accChart2"></canvas>
								<span class="font_10px" style="float: right;">(월)</span>
							</div>
						</ul>
						<ul style="padding-left: 0px; ">
							<li class="subtitle_10px bold taC"  style="padding-bottom:20px;">&lt; 종목 매매 거래 내역 &gt;</li>
							<table class="table table-striped">
								<thead>
									<tr>
										<th class="th-date trans_th">날짜</th>
										<th class="trans_th">구분</th>
										<th  class="trans_th">종목</th>
										<th style="text-align: right;"  class="trans_th">수량</th>
										<th style="text-align: right;"  class="trans_th">매수가</th>
										<th style="text-align: right;"  class="trans_th">매도가</th>
										<th class="th-date trans_th" style="text-align: center;" >매수일</th>
										<th class="th-date trans_th" style="text-align: center;" >매도일</th>
										<th style="text-align: right;"  class="trans_th">수익률(%)</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${transList2}" var="historyList"	varStatus="loop">
										<tr>
											<td class="td-date">${historyList.backDate}</td>
											<c:choose>
												<c:when test="${historyList.transKind eq '신규매수' or historyList.transKind eq '부분매수'}">
													<td><span class="label label-danger">${historyList.transKind}</span></td>
													<td>${historyList.stockName}(${historyList.stockCode})</td>
													<td style="text-align: right;"><b class="text-danger">+${ historyList.stockCnt }</b></td>
												</c:when>
												<c:otherwise>
													<td><span class="label label-info">${historyList.transKind}</span></td>
													<td>${historyList.stockName}(${historyList.stockCode})</td>
													<td style="text-align: right;"><b class="text-info">-${ historyList.stockCnt }</b></td>
												</c:otherwise>
											</c:choose>
											<td style="text-align: right;"><fmt:formatNumber value="${historyList.buyPrice}" pattern="#,###"/>원</td>
											<td style="text-align: right;"><fmt:formatNumber value="${historyList.sellPrice}" pattern="#,###"/> 원</td>
											<td class="td-date" style="text-align: center;">${historyList.buyDate}</td>
											<td class="td-date" style="text-align: center;">${historyList.sellDate}</td>
											<td style="text-align: center;">${historyList.earningRate}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</ul>
					</div>
					<div class="row vertical-tab" style="padding: 0 14px;">
                            
                            </div>
						<!-- 가상매매 수익률 박스 -->
					</div>




				</div>
			</div>
		</div>
		<script type="text/javascript">
			function changeChart(t) {
				if (t) {
					$('.btn_acc').css('display', 'none')
					$('.btn_earn').css('display', 'block')
				} else {
					$('.btn_acc').css('display', 'block')
					$('.btn_earn').css('display', 'none')
				}

			}
		</script>
		<script type="text/javascript">
			var chartLabels = [];
			var data = [];
			var data2 = [];
			var data3 = [];

			var dataSet = ${stockDayList}
			$.each(dataSet, function(inx, obj) {
				chartLabels.push(obj.stockDate);
				data.push(obj.stockFluc);
				data2.push(obj.kospiFluc);
				data3.push(obj.kosdaqFluc);
			});

			var config = {
				type : 'line',
				data : {
					labels : chartLabels,
					datasets : [ {
						label : "수익률",
						borderColor : '#fb9678',
						borderWidth : 2,
						radius : 0,
						data : data,
					}, {
						label : "코스피",
						borderColor : '#00c292',
						borderWidth : 2,
						radius : 0,
						data : data2,
					}, {
						label : "코스닥",
						borderColor : '#01c0c8',
						borderWidth : 2,
						radius : 0,
						data : data3,
					} ]
				},
				options : {
					maintainAspectRatio : false,
					interaction : {
						intersect : false
					},
					plugins : {},
					legend : {
						display : true,
						position : 'bottom',
						fontSize : 20,
						bowWidth : 0
					},
					scales : {
						xAxes : [ {
							type : 'time',
							time : {
								unit : 'year'
							},
							display : true,
							scaleLabel : {
								display : true,
								labelString : '(년월)',
								fontColor : '#999'
							}
						} ],
						yAxes : [ {
							display : true,
							scaleLabel : {
								display : true,
								labelString : '(%)',
								fontColor : '#999'
							}
						} ]
					}
				}
			};

			var myChart = new Chart(document.getElementById('dayChart'), config);
			var myChart2 = new Chart(document.getElementById('dayChart2'),
					config);
		</script>
<script>
var chartLabels = [];
var accBal = [];
var earningRate = [];

var dataSet = ${accList}
$.each(dataSet, function(inx, obj) {
	chartLabels.push(obj.backDate);
	accBal.push(obj.totalBal);
	earningRate.push(obj.earningRate);
});


var config = {
		  type: 'line',
		  data: {
			labels : chartLabels,
		    datasets: [{
		      label: "계좌 총액",
		      borderColor: '#fb9678',
		      radius: 0,
		      data: accBal
		    }]
		  },
		  options: {
			  maintainAspectRatio: false,
			  interaction: {
		      intersect: false
		    },
		    plugins: {
		    },
		    legend : {
				display : true,
				position : 'bottom',
				labels : {
					fontSize : 32
				}
			},
		    scales: {
		    	xAxes: [{
		    		type: 'time',
		    		time:{
		    			unit:'year'
		    		},
					display: true,
					scaleLabel: {
						display: true,
						labelString: '(년월)',
						fontColor:'#999'
					}
				}],
				yAxes: [{
					display: true,
					scaleLabel: {
						display: true,
						labelString: '(원)',
						fontColor:'#999'
					}
				}]
		    }
		  }
		};

var accChart = new Chart(document.getElementById('accChart'),config);


var config2 = {
		  type: 'line',
		  data: {
			labels : chartLabels,
		    datasets: [  {
		      label: "수익률",
		      borderColor: '#00c292',
		      borderWidth: 2,
		      radius: 0,
		      data: earningRate
		    }]
		  },
		  options: {
			  maintainAspectRatio: false,
		    interaction: {
		      intersect: false
		    },
		    plugins: {
		    },
		    legend : {
				display : true,
				position : 'bottom',
				labels : {
					fontSize : 32
				}
			},
		    scales: {
		    	xAxes: [{
		    		type: 'time',
		    		time:{
		    			unit:'year'
		    		},
					display: true,
					scaleLabel: {
						display: true,
						labelString: '(년월)',
						fontColor:'#999'
					}
				}],
				yAxes: [{
					display: true,
					scaleLabel: {
						display: true,
						labelString: '(%)'
						,fontColor:'#999'
					}
				}]
		    }
		  }
		};

var earningChart = new Chart(document.getElementById('earningChart'),config2);

</script>

<script type="text/javascript">
var chartLabels = [];
var data = [];
var data2 = [];
var data3 = [];
var data4 = [];
var data5 = [];
var data6 = [];


var dataSet = ${stockAVGList}
$.each(dataSet, function(inx, obj) {
	chartLabels.push(obj.stockDate);
	data.push(obj.stockFluc);
	data2.push(obj.kospiFluc);
	data3.push(obj.kosdaqFluc);
	data4.push(obj.stockDayFluc);
	data5.push(obj.kospiDayFluc);
	data6.push(obj.kosdaqDayFluc);
});

var config3 = {
		  type: 'line',
		  data: {
			labels : chartLabels,
		    datasets: [{
		      label: "수익률",
		      borderColor: '#fb9678',
		      borderWidth: 2,
		      radius: 0,
		      data: data
		      
		    },
		    {
		      label: "코스피",
		      borderColor: '#00c292',
		      borderWidth: 2,
		      radius: 0,
		      data: data2
		    },
		    {
		    	label: "코스닥",
			      borderColor: '#01c0c8',
			      borderWidth: 2,
			      radius: 0,
			      data: data3
			    }]
		  },
		  options: {
			  maintainAspectRatio: false,
		    interaction: {
		      intersect: false
		    },
		    plugins: {
		    },
		    legend : {
				display : true,
				position : 'bottom',
				labels : {
					fontSize : 32
				}
			},
		    scales: {
		    	xAxes: [{
		    		type: 'time',
		    		time:{
		    			unit:'year'
		    		},
					display: true,
					scaleLabel: {
						display: true,
						labelString: '(년월)',
						fontColor:'#999'
					}
				}],
				yAxes: [{
					display: true,
					scaleLabel: {
						display: true,
						labelString: '(%)',
						fontColor:'#999'
					}
				}]
		    }
		  }
		};
		
var config4 = {
		  type: 'bar',
		  data: {
			labels : chartLabels,
		    datasets: [{
		      label: "수익률",
		      borderColor: 'rgb(245, 156, 39)',
		      borderWidth: 2,
		      radius: 0,
		      data: data4,
		      backgroundColor: 'rgb(245, 156, 39)'

		    },
		    {
		      label: "코스피",
		      borderColor: 'rgb(15, 147, 208)',
		      borderWidth: 2,
		      radius: 0,
		      data: data5,
		      backgroundColor: 'rgb(15, 147, 208)'
		    },
		    {
		    	label: "코스닥",
			      borderColor: 'rgb(226, 62, 62)',
			      borderWidth: 2,
			      radius: 0,
			      data: data6,
			      backgroundColor: 'rgb(226, 62, 62)'
			    }]
		  },
		  options: {
			  maintainAspectRatio: false,
		    interaction: {
		      intersect: false
		    },
		    plugins: {
		    },
		    legend : {
				display : true,
				position : 'bottom',
				labels : {
					fontSize : 32
				}
			},
		    scales: {
		    	xAxes: [{
		    		type: 'time',
		    		time:{
		    			unit:'year'
		    		},
					display: true,
					scaleLabel: {
						display: true,
						labelString: '(년월)',
						fontColor:'#999'
					}
				}],
				yAxes: [{
					display: true,
					scaleLabel: {
						display: true,
						labelString: '(%)',
						fontColor:'#999'
					}
				}]
		    }
		  }
		};

	
var myChart3 = new Chart(document.getElementById('dayChart3'),config3);
var myChart4 = new Chart(document.getElementById('dayChart4'),config4);
var myChart5 = new Chart(document.getElementById('dayChart5'),config4);


var chartLabels = [];
var accBal = [];
var buyTotal = [];
var sellTotal =[];

var dataSet = ${accList}
$.each(dataSet, function(inx, obj) {
	chartLabels.push(obj.backDate);
	accBal.push(obj.totalBal);
	buyTotal.push(obj.buyTotalPrice);
	sellTotal.push(obj.sellTotalPrice);
});



	var config6 = {
		type : 'bar',
		data : {
			labels : chartLabels,
			datasets : [ {
				label : "계좌 총액",
				borderColor : 'rgb(245, 156, 39)',
				radius : 0,
				data : accBal,
			    backgroundColor: 'rgb(245, 156, 39)'
			}, {
				label : "매수 금액",
				borderColor : '#d9534f',
				radius : 0,
				data : buyTotal,
				 backgroundColor: '#d9534f'
			}, {
				label : "매도 금액",
				borderColor : '#5bc0de',
				radius : 0,
				data : sellTotal,
				 backgroundColor: '#5bc0de'
			}

			]
		},
		options : {
			maintainAspectRatio: false,
			interaction : {
				intersect : false
			},
			plugins : {},
			legend : {
				display : true,
				position : 'bottom',
				labels : {
					fontSize : 32
				}
			},
			scales : {
				xAxes : [ {
					type : 'time',
					time : {
						unit : 'year'
					},
					display : true,
					scaleLabel : {
						display : true,
						labelString : '(년월)',
						fontColor : '#999'
					}
				} ],
				yAxes : [ {
					display : true,
					scaleLabel : {
						display : true,
						labelString : '(원)',
						fontColor : '#999'
					}
				} ]
			}
		}
	};

	var accChart6 = new Chart(document.getElementById('accChart2'), config6);
</script>

	</section>
	<!-- section 끝 -->
	<!-- Start Footer -->
	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>
	

</body>
</html>