
// jQuery 버전

/*$(document).ready(function() {
	
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
	
})*/


// vanilla javascript 버전

window.onload = function() {
	
	let searchTypeIsSelected = false;
	
	let typeInput = document.getElementById("type");
	
	let keywordViewer = document.getElementById("keywordViewer");
	
	let keyword_N_El = document.getElementById("keyword_N");
	let keyword_J_El = document.getElementById("keyword_J");
	let keyword_D_El = document.getElementById("keyword_D");
	
	let searchBtn_El = document.getElementById("searchBtn");
	
	let setKeywordAndType = function(type, keyword) {
		typeInput.value = type;
		keywordViewer.innerHTML = keyword;
		searchTypeIsSelected = true;
	}
	
	keyword_N_El.addEventListener('click', function() {
		setKeywordAndType('n', '이름');
	});
	
	keyword_J_El.addEventListener('click', function() {
		setKeywordAndType('j', '직책');
	});
	
	keyword_D_El.addEventListener('click', function() {
		setKeywordAndType('d', '부서번호');
	});
	
	searchBtn_El.addEventListener('click', function() {
	
		if(!searchTypeIsSelected) {
			alert('검색 조건을 선택하세요');
			return;
		}
		
		let keyword = document.getElementById("keyword").value;
		let type = typeInput.value;
		
		location.href = "/list?keyword=" + keyword + "&type=" + type;
		
	});
	
	
}