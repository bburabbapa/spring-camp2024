<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑장 뷰</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	    <meta content="" name="description">
	    <meta content="" name="keywords">
	
	    <!-- Favicons -->
	    <link href="assets/img/favicon.png" rel="icon">
	    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
	
	    <!-- Google Fonts -->
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
	
	    <!-- Vendor CSS Files -->
	    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	    <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
	    <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	    <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	
	    <!-- Template Main CSS File -->
	    <link href="/assets/css/main2.css" rel="stylesheet">
	    <link href="/assets/css/header.css" rel="stylesheet">
		<link href="/assets/css/search/campsearch.css" rel="stylesheet">
		
		
	    
	    <style>
        
  		</style>
  		
  		<script src="../assets/js/search/campsearch.js"></script>
  		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d5d12845d8d8c6270f391d3f37e0eb7d"></script>
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	
	<section class="notice_search">
		
	<!-- 캠핑장 정보 -->
	<h1>캠핑장 정보</h1>
			    	
	<header class="camp_top_info">
	
		<!-- 이미지, 표 -->
		<div class="camp_info_box">
		<!-- 이미지 -->
		<div class="img_b">
			<img src="https://gocamping.or.kr/upload/camp/10/thumb/thumb_720_1869epdMHtUyrinZWKFHDWty.jpg" alt="메인 이미지" />
		</div>
		<!-- 이미지 옆 표 -->
		<div class="cont_tb">
			<table class="table">
				<colgroup>
					<col style="width: 35%;" />
					<col style="width: 65%;" />
				</colgroup>
				<tbody>
						<tr>
							<th scope="col">캠핑장명</th>
							<td>아웃오브파크</td>
						</tr>

						<tr>
							<th scope="col">주소</th>
							<td>강원도 춘천시 남면 가옹개길 52-9</td>
						</tr>
					
						<tr>
							<th scope="col">문의처</th>
							<td>1522-1861</td>
						</tr>

						<tr>
							<th scope="col">캠핑장 환경</th>
							<td>민간</td>
						</tr>

						<tr>
							<th scope="col">캠핑장 유형</th>
							<td>카라반</td>
						</tr>

						<tr>
							<th scope="col">운영기간</th>
							<td>봄,여름,가을,겨울</td>
						</tr>

						<tr>
							<th scope="col">운영일</th>
							<td>평일+주말</td>
						</tr>

						<tr>
							<th scope="col">홈페이지</th>
							<td><a href="http://outofpark.com/main/" target="_BLANK" title="새창열림"><strong>http://outofpark.com/main/</strong></a>
							<i class="ico_link"><span class="skip"></span></i>
							</td>
						</tr>
					
						<tr>
							<th scope="col">주변이용가능시설</th>
							<td>수영장, 노래방, 찜질방, 카페, 중앙 무대, 분수</td>
						</tr>

				</tbody>
			</table>
		</div>
		</div>
	</header>
					
	<div class="tabmenu_ti">
	    <input type="radio" name="tabmenu" id="tab01" checked>
	    <label for="tab01">캠핑장 소개</label>
	    <input type="radio" name="tabmenu" id="tab03">
	    <label for="tab03">위치/주변정보</label>
	    
	    <div class="conbox con1">
                <span>힐링피아 카라반 글램핑 풀 캠핑장은 어비계곡 사기막천과 유명산 벽계천이 합류하는 두물머리에 위치하고 있다.</span>
                <p id="pnull">(등록된 소개글이 없습니다)</p>	
	    </div>
	    <div class="conbox con3">위치 및 주변 정보 <br>울양양고속도로 강촌IC에서 엘리시안강촌 방면으로 30분가량 달리면 도착<br><br><br> 
	    	<!-- <div id="map" style="width:1080px;height:500px;position: relative;"></div> -->
	    </div>
	    
	   
	</div>
								
	<h3 class="icon_h3">캠핑장 시설정보</h3>
		<div class="camp_item_g">
			<ul>
				<li><i class="ico_volt"><span>수영장</span></i></li>
				<li><i class="ico_wifi"><span>노래방</span></i></li>
				
			</ul>
		</div>
		
	<h3 class="icon_h3">기타 주요시설</h3>
	<section id="table_type03">
		<div class="table_w">
			<table class="table_t4 camp_etc_tb">
				<tbody class="t_c">
			
						<tr>
						<th scope="col">주요시설</th>
						<td class="etc_type">정보없음</td>
					</tr>
					
					<tr>
						<th scope="col">기타 정보</th>
						<td>
							<ul class="table_ul05">
								<li id="tdcss">개인 트레일러 입장: 불가</li>
								<li id="tdcss">개인 캠핑카 입장: 불가</li>
								<li id="tdcss">반려동물 동반: 가능</li>
							</ul>
				(※ 실제 결과는 현장사정 및 계절에 따라 달라질 수 있으니 캠핑장 사업주에 직접 확인 후 이용바랍니다.)
						</td>
					</tr>
					
						<tr>
						<th scope="col">기타 부대시설</th>
						<td>
							<ul class="table_ul05">
								<li id="tdcss">수영장, 노래방, 찜질방, 카페, 중앙 무대, 분수</li>
								
							</ul>
						
						</td>
					</tr>

					<tr>
						<th scope="col">바닥형태 (수량)</th>
						<td>
							<ul class="table_ul05">
								<li id="tdcss">잔디: (0)</li>
								<li id="tdcss">파쇄석: (0)</li>
								<li id="tdcss">테크: (15)</li>
								<li id="tdcss">자갈: (0)</li>
								<li id="tdcss">맨흙: (0)</li>
							</ul>
						</td>
					</tr>
						<tr>
						<th scope="col">캠핑장비대여</th>
						<td class="etc_type">개별</td>
						</tr>
						<tr>
						<th class="col">화로대</th>
						<td class="etc_type">개별</td>
					</tr>

				</tbody>
			</table>
		</div>
		<p class="camp_intro_txt">
		<span class="info_notice">
			&nbsp;* CampBridge에 등록된 정보는 현장상황과 다소 다를 수 있으니 <span class="info_f_red">반려동물 동반 여부, 부가 시설물, 추가차량</span> 등 원활한 캠핑을 위해 꼭 필요한 사항은 해당 캠핑장에 미리 확인하시기 바랍니다.
		</span> 
		</p>
	</section>
</section>

		
	<!-- ======= Footer ======= -->
  	<%@include file="../include/footer.jsp" %>
 	<!-- End Footer -->
	</body>
</html>