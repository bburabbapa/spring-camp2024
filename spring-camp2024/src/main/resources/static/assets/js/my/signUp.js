/**
 * 회원가입
 */

 
 	$(function(){
		 let chkid="";
		 let chkKeyUp=0;
		 
		 
		 
		 //가입하기 버튼 클릭
		 $("#savebtn").click(function(){
			 
			 //정규식표현
			 let idpattern = /^[a-zA-Z]{1}[a-zA-Z0-9]{3,7}$/;
			 let pwpattern = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@$%^&().,]).{5,11}$/;
			 let namepattern = /^[ㄱ-ㅎ가-힣]{1,}$/;
			 let nicknamepattern = /^[ㄱ-ㅎ가-힣a-zA-Z0-9]{0,7}$/;
			 
			 let id = $("#id").val();
			 let name = $("#name").val();
			 let pw = $("#pw").val();
			 let nickname = $("#nickname").val();
			 
			 if(!namepattern.test(name)){
				 alert("이름을 입력해주세요. 이름은 한글만 가능합니다.");
				 return false;
			 }
			 if(!idpattern.test(id)){
				 alert("아이디는 4~8자리 영문, 숫자만 사용이 가능합니다.");
				 return false;
			 }
			 if(chkKeyUp!=1){
				 alert("아이디 중복체크를 하셔야 다음으로 진행이 가능합니다.");
				 return false;
			 }
			 
			 if(chkid!=id){
				 alert("아이디 중복체크를 다시 해주세요.");
				 return false;
			 }
				 			 
			 if(!pwpattern.test(pw)){
				 alert("비밀번호는 영문,숫자,특수문자 1개 이상 입력하셔야 합니다.");
				 return false;
			 }
			 
			 if($("#pw2").val().length<1){
					 alert("비밀번호 일치 확인하셔야 합니다.");
					 $("#pw2").focus();
					 return false;
			}
			
			 if(!nicknamepattern.test(nickname)){
				 alert("닉네임은 한글,영문,숫자를 포함한 8자까지만 사용가능합니다.");
				 return false;
			 }
			 
			 
			 
			 if($("#nickname").val().length<1){
					 alert("닉네임을 입력하셔야 합니다.");
					 $("#nickname").focus();
					 return false;
			}
			
			 if($("#mail_id").val().length<1){
					 alert("이메일을 입력하셔야 합니다.");
					 $("#mail_id").focus();
					 return false;
			}
			
			 if($("#address2").val().length<1){
					 alert("주소를 입력하셔야 합니다.");
					 $("#address2").focus();
					 return false;
			}
			
			 if($("input[name='gender']:checked").length!=1){
					 alert("성별체크를 하셔야 합니다.");
					 return false;
			 }
			
			 if($("#f_tell").val().length<1){
					 alert("휴대폰 번호를 입력하셔야 합니다.");
					 $("#f_tell").focus();
					 return false;
			}
			 if($("#m_tell").val().length<1){
					 alert("휴대폰 번호를 입력하셔야 합니다.");
					 $("#m_tell").focus();
					 return false;
			}
			 if($("#l_tell").val().length<1){
					 alert("휴대폰 번호를 입력하셔야 합니다.");
					 $("#l_tell").focus();
					 return false;
			}
			
			
			if ($("input[name='local']:checked").length<1) {
			    alert("지역 선택하셔야 합니다.");
			    return false;
			}
			
			
			 userSignupFrm.submit();
		 });//savebtn
		 
		 
		 //비밀번호 일치 확인
		  $("#pw2").keyup(function(){
				 
				 if($("#pw").val()!=$("#pw2").val()){
					 $("#pwCheck").text("비밀번호가 일치 하지 않습니다.");
					 $("#pwCheck").css("color", "#FF4500");
				 }else{
					 $("#pwCheck").text("비밀번호가 일치합니다.");
					 $("#pwCheck").css("color", "#009223");
				 }//if
			 });//#pw2-비밀번호확인
		 
		 
		 //아이디체크
		 $("#idCheckBtn").click(function(){
			 console.log($("#id").val());
			 
			 //아이디가 있는지 체크
			 if($("#id").val().length<1){
				alert("아이디를 입력하셔야 체크 가능합니다.");
				$("#id").focus();
				return false;
			 }
			 
			 //ajax
			 $.ajax({
				 url:"/my/idCheck",
				 type:"post",
				 data:{"id":$("#id").val()},
				 dataType:"text",
				 success:function(data){
					 if(data=="사용가능"){
						 $("#chkTxt").text("아이디 사용가능");
						 $("#chkTxt").css({"color":"blue","font-weight":"700"});
						 
						 chkid=$("#id").val();
					 }else{
						 $("#chkTxt").text("아이디 사용불가");
						 $("#chkTxt").css({"color":"red","font-weight":"700"});
					 }
					 console.log("data : "+data);
					 chkKeyUp=1;
				 },
				 error:function(){
					 alert("실패");
				 }
			 });//ajax
		 });//idCheckBtn
		 
		 
		 //다음주소 api
		 $("#addressBtn").click(function(){
		 new daum.Postcode({
	        oncomplete: function(data) {
	            $("#f_postal").val(data.zonecode);
	            $("#address1").val(data.address);
	        }
	    }).open();

		});//다음주소
		 
		
		 //이메일 선택
		 $('#eSelect').change(function() {
			 $("#eSelect option:selected").each(function(){
				if($(this).val()=== '1'){ //직접입력
					$("#main_tail").val('');
					$("#main_tail").attr("readonly",false); //활성화 //꼭 readonly로 해야함!
				}else{//직접입력이 아닐경우
					$("#main_tail").val($(this).val());
					$("#main_tail").attr("readonly",true);
				}
			 });
        });//이메일 선택
		 
		 		 
	 });//j
		 
		 
		 //프로필 사진 
	       $(document).ready(function() {
			    // 파일이 변경되었을 때 이벤트 핸들러 추가
			    $('#m_img').on('change', function(event) {
			        var input = event.target;
			        if (input.files && input.files[0]) {
			            // 파일이 선택되었을 때
			            var reader = new FileReader();
			            reader.onload = function(e) {
			                $('#previewImage').attr('src', e.target.result);
			            }
			            reader.readAsDataURL(input.files[0]);
			        } else {
			            // 파일이 선택되지 않았을 때
			            $('#previewImage').attr('src', '../assets/img/login/profile.png'); // 대체할 이미지 경로로 변경
			        }
			    });
			
			    // 페이지 로드 시에도 초기 대체 이미지 설정
			    if (!$('#m_img').val()) {
			        $('#previewImage').attr('src', '../assets/img/login/profile.png'); // 대체할 이미지 경로로 변경
			    }
			});//프로필 사진
       	
		
		 
		 
		 
		 
		 
		 //지역 체크박스
		/* var checkboxes = document.querySelectorAll('input[type="checkbox"][name="local"]');
			checkboxes.forEach(function(checkbox) {
			    checkbox.addEventListener('click', function(event) {
			        // 클릭된 체크박스가 선택된 경우에만 다른 모든 체크박스의 선택을 해제합니다.
			        if (event.target.checked) {
			            checkboxes.forEach(function(otherCheckbox) {
			                // 현재 체크박스가 아닌 다른 체크박스의 선택을 해제합니다.
			                if (otherCheckbox !== event.target) {
			                    otherCheckbox.checked = false;
			                }
			            });
			        }
			    });
			});//지역 체크박스*/
