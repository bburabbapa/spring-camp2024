/**
 * cpRent.jsp파일
 */

// 모달 창을 표시하는 함수
function showModal(imageSrc) {
  var modal = document.getElementById("myModal");
  var modalImage = document.getElementById("modalImage");
  modalImage.src = imageSrc;
  modal.style.display = "block";
}

// 모달 창을 닫는 함수
function closeModal() {
  var modal = document.getElementById("myModal");
  modal.style.display = "none";
  document.body.style.backgroundColor = "transparent";
}

// 모달 창 외부를 클릭했을 때 모달 창 닫기
window.onclick = function(event) {
  var modal = document.getElementById("myModal");
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

//로그인 상태, 체크박스
$(document).on("click", ".cp_CartBtn", function() {
	// 로그인 상태에서만 진행가능
    //let session_id = "${session_id}";
    if (session_id === null || session_id === "") {
        alert("로그인을 하여야 다음으로 진행할 수 있습니다. 로그인 해주세요!");
        window.location.href = "../my/login";
        return false;
    }
    
    // 체크박스의 체크가 하나라도 선택 되어야 넘어가게 구현
    let checkboxes = document.querySelectorAll('input[name="pro_id"]:checked');
    if (checkboxes.length === 0) {
        alert("체크박스를 하나 이상 선택해주세요!");
        return false;
    }
 
    // 두개의 조건이 맞으면 넘어감!
    cp_CartFrm.submit();
    
 	// 선택된 체크박스 체크 해제
    checkboxes.forEach(function (checkbox) {
        checkbox.checked = false;
    });
});