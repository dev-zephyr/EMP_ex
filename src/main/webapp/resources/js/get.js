

$(document).ready(function() {
	
	$(".eName").on('click', function(e) {
		e.preventDefault();
		
		
		let target_empNo = $(this).data("empno");
		
		$.ajax({
			type : 'get',
			url : '/get/' + target_empNo,
			contentType : 'application/json',
			success : function(result) {
				
				$('input[name="empNo"]').val(result.empNo);
				$('input[name="ename"]').val(result.ename);
				$('input[name="job"]').val(result.job);
				$('input[name="mgr"]').val(result.mgr);
				$('input[name="hireDate"]').val(formatDate(result.hireDate));
				$('input[name="sal"]').val(result.sal);
				$('input[name="comm"]').val(result.comm);
				$('input[name="deptNo"]').val(result.deptNo);
				
				
			}
		
		})
		
	})
	
}) 


let formatDate = (function(hireDate) {
	
	let dateObj = new Date(hireDate);
	let year = dateObj.getFullYear();
	let month = (dateObj.getMonth() + 1) > 9 ? 
			dateObj.getMonth() + 1 : '0' + (dateObj.getMonth() + 1);
	let day = dateObj.getDate() > 9 ?
			dateObj.getDate() : '0' + dateObj.getDate();
	
	return year + "-" + month + "-" + day;
	
});

