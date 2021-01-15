
$(document).ready(function() {
	
	var formObj = $("#updateForm");
	
	// 등록 기능
	$("#registerBtn").on('click', function() {
		
		formObj.attr("action", "/insert");
		formObj.submit();
		
	});
	
	// 수정 기능
	$("#updateBtn").on('click', function() {
		
		var checkConfirm = confirm('수정하시겠습니까?');
		
		if(!checkConfirm) {
			return;
		}
		
		formObj.attr("action", "/update");
		formObj.submit();
		
	});
	
	// 삭제 기능
	$("#deleteBtn").on('click', function() {
		
		var checkConfirm = confirm('삭제하시겠습니까?');
		
		if(!checkConfirm) {
			return;
		}
		
		formObj.attr("action", "/delete");
		formObj.submit();
		
	});
	
	
	
	
	
	
	
})