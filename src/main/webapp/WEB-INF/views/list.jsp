<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="include/header.jsp"%>

<div class="container-fluid">

	<div class="text-center mt-5 mb-5">
		<h2>사원 관리</h2>
	</div>

	<div class="row">

		<div class="col-md-3">
			<!-- 입력, 수정 폼 -->
			<form id="updateForm" method="POST">
				<table class="table table-sm table-striped">
					<thead>
						<tr>
							<th scope="col" colspan="2">사원 현황</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>사원번호</th>
							<td>
							<input type="text" class="form-control" name="empNo" readonly="readonly">
							</td>
						</tr>
						<tr>
							<th>이름</th>
							<td>
								<input type="text" class="form-control" name="ename">
							</td>
						</tr>
						<tr>
							<th>직책</th>
							<td>
								<input type="text" class="form-control" name="job">
							</td>
						</tr>
						<tr>
							<th>상사 사원번호</th>
							<td>
								<input type="text" class="form-control" name="mgr">
							</td>
						</tr>
						<tr>
							<th>입사일</th>
							<td>
								<input type="text" class="form-control" name="hireDate">
							</td>
						</tr>
						<tr>
							<th>급여</th>
							<td>
								<input type="text" class="form-control" name="sal">
							</td>
						</tr>
						<tr>
							<th>커미션</th>
							<td>
								<input type="text" class="form-control" name="comm">
							</td>
						</tr>
						<tr>
							<th>부서번호</th>
							<td>
								<input type="text" class="form-control" name="deptNo">
							</td>
						</tr>

					</tbody>
				</table>
			</form>
			<hr>

			<div class="d-flex justify-content-between">
				<div>
					<button type="button" id="registerBtn"
						class="btn btn-outline-secondary">등록</button>
				</div>
				<div>
					<button type="button" id="updateBtn"
						class="btn btn-outline-secondary">수정</button>
				</div>
				<div>
					<button type="button" id="deleteBtn"
						class="btn btn-outline-secondary">삭제</button>
				</div>
				<div>
					<button type="button" id="resetBtn"
						class="btn btn-outline-secondary">초기화</button>
				</div>

			</div>
		</div>

		<div class="col-md-9">
			<!-- 사원 테이블 -->
			<table class="table table-sm table-striped">
				<thead>
					<tr>
						<th scope="col">사원번호
							<a href="/list/sort?orderType=empNo&order=asc&page=${pageMaker.cri.page }"><i class="fas fa-sort-up"></i></a>
							<a href="/list/sort?orderType=empNo&order=desc&page=${pageMaker.cri.page }"><i class="fas fa-caret-down"></i></a>
						</th>
						<th scope="col">이름
							<a href="/list/sort?orderType=ename&order=asc&page=${pageMaker.cri.page }"><i class="fas fa-sort-up"></i></a>
							<a href="/list/sort?orderType=ename&order=desc&page=${pageMaker.cri.page }"><i class="fas fa-caret-down"></i></a>
						</th>
						<th scope="col">직책
							<a href="/list/sort?orderType=job&order=asc&page=${pageMaker.cri.page }"><i class="fas fa-sort-up"></i></a>
							<a href="/list/sort?orderType=job&order=desc&page=${pageMaker.cri.page }"><i class="fas fa-caret-down"></i></a>
						</th>
						<th scope="col">상사 사원번호
							<a href="/list/sort?orderType=mgr&order=asc&page=${pageMaker.cri.page }"><i class="fas fa-sort-up"></i></a>
							<a href="/list/sort?orderType=mgr&order=desc&page=${pageMaker.cri.page }"><i class="fas fa-caret-down"></i></a>
						</th>
						<th scope="col">입사일
							<a href="/list/sort?orderType=hireDate&order=asc&page=${pageMaker.cri.page }"><i class="fas fa-sort-up"></i></a>
							<a href="/list/sort?orderType=hireDate&order=desc&page=${pageMaker.cri.page }"><i class="fas fa-caret-down"></i></a>
						</th>
						<th scope="col">급여
							<a href="/list/sort?orderType=sal&order=asc&page=${pageMaker.cri.page }"><i class="fas fa-sort-up"></i></a>
							<a href="/list/sort?orderType=sal&order=desc&page=${pageMaker.cri.page }"><i class="fas fa-caret-down"></i></a>
						</th>
						<th scope="col">커미션
							<a href="/list/sort?orderType=comm&order=asc&page=${pageMaker.cri.page }"><i class="fas fa-sort-up"></i></a>
							<a href="/list/sort?orderType=comm&order=desc&page=${pageMaker.cri.page }"><i class="fas fa-caret-down"></i></a>
						</th>
						<th scope="col">부서번호
							<a href="/list/sort?orderType=deptNo&order=asc&page=${pageMaker.cri.page }"><i class="fas fa-sort-up"></i></a>
							<a href="/list/sort?orderType=deptNo&order=desc&page=${pageMaker.cri.page }"><i class="fas fa-caret-down"></i></a>
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="emp" items="${list }">
						<tr>
							<th scope="row"><c:out value="${emp.empNo }" /></th>
							<td><a href="#" class="eName" data-empno="${emp.empNo }">
									<c:out value="${emp.ename}" />
							</a></td>
							<td><c:out value="${emp.job }" /></td>
							<td><c:out value="${emp.mgr }" /></td>
							<td><fmt:formatDate value="${emp.hireDate }"
									pattern="yyyy-MM-dd" /></td>
							<td><c:out value="${emp.sal }" /></td>
							<td><c:out value="${emp.comm }" /></td>
							<td><c:out value="${emp.deptNo }" /></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>

			<!-- Pagination -->
			<nav aria-label="Page navigation example ">
				<ul class="pagination nav justify-content-end">

					<c:if test="${pageMaker.prev }">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>

					<c:forEach var="pageNum" begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }">
						<li
							class='page-item ${pageMaker.cri.page == pageNum ? "active" : "" }'>
							<a class="page-link" href="/list?page=${pageNum }"> <c:out
									value="${pageNum }" />
						</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next }">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>
				</ul>
			</nav>

			<!-- 검색 탭 -->
			<div class="row d-flex justify-content-center">
				<div class="col-md-6 input-group mb-3">
					<div class="input-group-prepend">
						<button class="btn btn-outline-secondary dropdown-toggle"
							type="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false" id="keywordViewer">----------</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" id="keyword_N">이름</a> <a
								class="dropdown-item" id="keyword_J">직책</a> <a
								class="dropdown-item" id="keyword_D">부서번호</a>
						</div>
					</div>
					<input type="text" class="form-control" name="keyword" id="keyword">
					<input type="hidden" name="type" id="type">
					<button type="button" class="btn btn-outline-secondary"
						id="searchBtn">검색</button>
				</div>
			</div>
		</div>


	</div>


</div>


<script>

	//등록, 수정, 삭제 실패 메세지 alert
	let crudResult = <c:out value="${result}" />;

	if(curdResult == '0') {
		alert('실패하였습니다');
	}
	
</script>

</body>
</html>
