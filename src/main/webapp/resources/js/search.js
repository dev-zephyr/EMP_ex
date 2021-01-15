

$(document).ready(function() {
	
	let searchTypeIsSelected = false;
	
	// 검색 키워드 이벤트 처리
	$("#keyword_N").on('click', function() {
		$("#keywordViewer").text("이름");
		$("#type").val("n");
		searchTypeIsSelected = true;
	})
	$("#keyword_J").on('click', function() {
		$("#keywordViewer").text("직책");
		$("#type").val("j");
		searchTypeIsSelected = true;
	})
	$("#keyword_D").on('click', function() {
		$("#keywordViewer").text("부서번호");
		$("#type").val("d");
		searchTypeIsSelected = true;
	})
	
	
	// 검색 버튼 기능 구현
	$("#searchBtn").on('click', function() {
	
		let keyword = $("#keyword").val();
		let type = $("#type").val();
		
		// 검색 조건 선택 안했을떄
		if(!searchTypeIsSelected) {
			alert('검색 조건을 선택하세요');
			return;
		}
		
		location.href = "/list?keyword=" + keyword + "&type=" + type;
	})
	
})