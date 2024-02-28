<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑장리뷰 - 뷰</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/assets/css/main2.css" rel="stylesheet">
<link href="/assets/css/review/reviewcontent.css" rel="stylesheet" type="text/css">
<link href="/assets/css/review/siteReview.css" rel="stylesheet" type="text/css">
<link href="/assets/css/review/listStyle2.css" rel="stylesheet" type="text/css">
<link href="/assets/css/review/header2.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

<script src="../assets/js/cps_review/RE_site.js"></script>
</head>
<style>
	.replynum{margin-left: 72px; margin-top: -53px; width: 200px; height: 22px;}
	.notice_img img{text-align: left; width:50%}
	.notice_noimgfile {padding: 20px 0 20px 48px;}
	.notice_noimg img{height:30px;}
	#notice_bfile{border-top : 1px solid silver; border-bottom : 1px solid silver;}
	.password{width: 75px; height: 28px; position: relative; top: 45px; left: 20px;}
</style>
<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp"%>
	<!-- End Header -->
	<section class="headerCss">
		<div id="contentWrap">
			<link type="text/css" rel="stylesheet" href="#">
			<div id="content">
				<div id="bbsData">
					<div class="page-body">
					
						<!-- 캠핑장 리뷰 메뉴 시작 -->
						<div class="camp-img-div">
							<img src="../assets/img/campReview/free_icon_icon.png" alt="캠핑용품리뷰" style="position: relative; margin-top: 40px; margin-bottom: 10px;">
							<h1 style="text-align: center;">캠핑장리뷰</h1>
						</div>
						<br>
						<!-- 캠핑장 리뷰 메뉴 끝 -->
	
						<form id="siteUpdateFrm" name="siteUpdateFrm" action="#" method="post" autocomplete="off" style="height: 1800px; position: relative; top: 100px; left: 270px;">
						<input type="hidden" name="cps_bno" value="${map.c_redto.cps_bno}">
						</form>
						<!-- 본문 시작 -->
						<div class="bbs-table-view">
							<table summary="게시글 보기">
							
							<colgroup>
						        <col width="10%">
						        <col width="70%">
						        <col width="7%">
						        <col width="13%">
				   			</colgroup>
						    <tr>
						       <th style="text-align: left;"><strong>글제목</strong></th>
						       <th style="text-align: left;"><span>아웃오브파크</span></th>
						       <th style="text-align: left;"><strong>DATE</strong></th>
						        <th style="text-align: left;"><strong>2023-12-23</strong></th>
						    </tr>
						    <tr style="border-bottom: 2px solid #009223;">
						       <td style="text-align: left; font-size: 15px;"><strong>NAME</strong></td>
						       <td style="font-size: 15px; text-align: left;">aaa</td>
						       <td style="text-align: left; font-size: 15px;"><strong>HIT</strong></td>
						       <td style="font-size: 15px; text-align: left;">11</td>
						    </tr>
							<tr>
								<td>
									<div class="data-bd-cont">
										<div id="MS_WritenBySEB">${map.c_redto.cps_bcontent}</div>
										<!-- <br> <img src="../assets/img/campReview/campReview.jpg" style="width: 400px; height: 400px;"> -->
									</div>
								</td>
							</tr>
							</tbody>
						</table>
						<img src ="">
						<div id="comment_list_0">
						리앤파크는 충북 영동군 황간면에 자리 잡고 있다. 영동군청을 기점으로 약 15㎞가량 떨어졌으며, 자동차를 타고 기골로, 대학로, 심원회로포를 차례로 거치면 닿는다. 도착까지 걸리는 시간은 25분 안팎이다. 이곳은 폐교를 리모델링해 감성적인 캠핑장으로 꾸몄다. 캠핑장 여기저기를 거닐다 보면 어른은 옛 추억에 잠기고, 어린이는 신기함에 든뜬다. 캠핑장에는 일반 야영장 30면과 글램핑 10개 동을 마련했다. 일반 야영장은 파쇄석으로 이뤄졌으며, 사이트 크기는 가로 10m 세로 10m로 널찍하다. 이 덕택에 웬만한 대형 텐트도 거뜬히 설치할 수 있다. 개인 트레일러와 개인 카라반 동반 입장이 가능하며, 소형견에 한해 반려동물도 출입할 수 있다. 사계절 내내 운영하며, 주말에만 문을 연다. 캠핑장 인근에 월류봉, 초강천 등 영동의 내로라하는 관광지가 즐비하다. 월류봉 방면으로 나가면 음식점도 여럿 있어 식도락을 만끽할 수 있다.
							<div class="bfileUpload" style="border-bottom: 1px solid #eee; border-top: 1px solid #eee; height: 45px; display: flex; padding: 10px 0 10px 19px;">
								<tr id="notice_bfile">
									<td class="article" style="text-align: center;"><strong style="width: 100px">첨부파일</strong>campcamp.jpeg</td>
							</div>
									
							<div class="bfileUpload" style="border-bottom: 2px solid #009223; border-top: 1px solid #eee; height: 100%; display: flex; padding: 10px 0 10px 19px;">
									<tr style="border-bottom: 2px solid #009223;">
										<td class="notice_noimgfile"><strong  style="width: 100px">메인이미지</strong></td>
										<td colspan="3" class="notice_img" ></td>
									</tr>
								
										<td colspan="3"></td>
										<tr style="border-bottom: 2px solid #009223;">
											<td class="notice_noimgfile"><strong  style="width: 100px"></strong><img style ="width:500px; height:300px;" src="../assets/img/main/campcamp.jpeg"></td>
											<td colspan="3" class="notice_noimg"></td>
										</tr>
								</tr>
							</div>
						</div>
						<!-- 본문 끝 -->
						
						<!-- 이전글/다음글 시작-->
						<table style="margin-top: -80px; position: relative; top: 120px; font-size: 14px; width: 1100px;">
							<tr>
								<td colspan="4" style="border-bottom: 2px solid #eee;"><strong>다음글</strong>
								<c:if test="${map.next_c_redto != null}">
									<span class="separator">|</span><a href="review_site?cps_bno=${map.next_c_redto.cps_bno}">${map.next_c_redto.cps_btitle}</a></td>
								</c:if>
								<c:if test="${map.next_c_redto == null}">
									<span class="separator">|</span>솔캠핑야영장
								</c:if>
							</tr>
							<tr>
								<td colspan="4"><strong>이전글</strong>
								<c:if test="${map.prev_c_redto != null}">
									<span class="separator">|</span><a href="review_site?cps_bno=${map.prev_c_redto.cps_bno}">${map.prev_c_redto.cps_btitle}</a></td>
								</c:if>
								<c:if test="${map.prev_c_redto == null}">
									<span class="separator">|</span>힐링캠프
								</c:if>
							</tr>
						</table>
						<!-- 이전글/다음글 끝-->
						
						<script>
					    	var authorId = "${map.c_redto.id}";
					        var currentUserId = "${session_id}";
					    </script>
						
						<div class="listBtn">
							<button type="button" class="list site_Delete">삭제</button>
							<button type="button" class="list site_Update">수정</button>
							<a href="siteReview"><button type="button" class="list">목록</button></a>
						</div>
											
						<!-- 댓글 입력 시작 -->
						<tr>
							<p class="password"><strong>비밀번호&nbsp;&nbsp;</strong><input type="password" class="replynum" placeholder=" ※ 입력시 비밀글로 저장"/></p>
						</tr>
						
						<script type="text/javascript">
							let temp = 0;
							let cps_bno = "${map.c_redto.cps_bno}";
						</script>
						
						<table>
							<tr>
								<textarea class="review_replyTxt" placeholder=" ※ 댓글을 입력하세요. (타인을 향한 욕설 및 비방은 무통보 삭제됩니다.)" style="width: 1000px; height: 88px; position: relative; bottom: 2px;"></textarea>
								<button type="button" id="replybtn" style="width: 90px; height: 88px;">등록</button>
							</tr>
						</table>
						<!-- 댓글 입력 끝 -->

						<!-- 댓글보기 시작-->
						<table style="margin-top: 70px; position: relative; top: -100px; font-size: 14px; width: 1100px; border-collapse: collapse;">
						    <tr>
						        <td style="font-weight: 700; border-bottom: 2px solid #eee;">총 5개의 댓글이 등록되었습니다.</td>
						    </tr>
						    <tbody class="replyBox">
					        <c:forEach var="Cps_comment" items="${map.Cps_commentlist}" varStatus="loop">
						    <tr id="${Cps_comment.cps_cno}">
				                <td style="border-bottom: 2px solid #eee; padding: 10px;">
				                    <strong>댓글 작성자</strong> | <strong style="color: blue;"class="cps_id">${Cps_comment.id}</strong>&nbsp;&nbsp;[<span>${Cps_comment.cps_cdate}</span>]
				                    <li class="review_replyTxt">${Cps_comment.cps_ccontent}</li>
				                    <c:if test="${session_id == Cps_comment.id}">
				                    <li id="replyBtn">
				                        <button type="button" class="rDelBtn">삭제</button>&nbsp
				                        <!-- <div class="rDelBtn">삭제</div>&nbsp -->
				                        <button type="button" class="rUBtn">수정</button>
				                    </li>
				                    </c:if>
				                    <c:if test="${session_id == Cps_comment.id}">
				                    <li id="replyBtn">
				                    </li>
				                    </c:if>
				                </td>
						    </tr>
						    
						    <!-- 수정창 시작-->
						    <!--  
						    <tr id="${Cps_comment.cps_bno}">
				                <td style="border-bottom: 2px solid #eee; padding: 10px;">
				                    <strong>댓글 작성자</strong> | <strong style="color: blue;">${Cps_comment.id}</strong>&nbsp;&nbsp;<span><fmt:formatDate value="${Cps_comment.cps_cdate}" pattern="YYYY-MM-DD HH:mm:ss"/></span>
				                    <li class="review_replyTxt"><textarea cols="145%">${Cps_comment.cps_ccontent}</textarea></li>
				                    <li id="replyBtn">
				                        <button type="button" class="cps_cancel">취소</button>&nbsp;
				                        <button type="button" class="cps_save">저장</button>
				                    </li>
				                </td>
						    </tr>
						    -->
							<!-- 수정창 끝-->  
							 
							<!-- 비밀댓글 시작 -->
							<!--  
							<c:if test="${Cps_comment.cps_cpw !=null || Cps_comment.cps_cpw!='' }">
								<tr id="${Cps_comment.cps_cno}">
									<td style="border-bottom: 2px solid #eee; padding: 10px;">
										<strong>댓글 작성자</strong> | <strong style="color: blue;">${Cps_comment.id}</strong>&nbsp;&nbsp;<span><fmt:formatDate value="${Cps_comment.cps_cdate}" pattern="YYYY-MM-dd HH:mm:ss"/></span>
										<li class="review_replyTxt">※ 비밀 댓글입니다.</li>
									</td>			
								</tr>
							</c:if>
							-->
							<!-- 비밀댓글 끝 -->
							 
					        </c:forEach>
						    </tbody>
						</table>

						<!-- 댓글보기 끝-->
						
						</div> <!-- bbs-table-view 본문 끝 -->
						
						
					</div> <!-- .page-body -->
				</div> <!-- #bbsData -->
			</div> <!-- #content -->
		</div> <!-- #contentWrap -->
	</section>
	<!-- ======= Footer ======= -->
	<%@include file="../include/footer.jsp"%>
	<!-- End Footer -->
</body>
</html>