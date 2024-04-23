<%-- 新規登録JSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/common/base.jsp">
	<c:param name="title">
		得点管理システム
	</c:param>

	<c:param name="scripts"></c:param>

	<c:param name="content">
		<section class="me-4">
			<h2 class="h3 mb-3 fw-norma bg-secondary bg-opacity-10 py-2 px-4">学生情報登録</h2>
			<div class="my-2 text-end px-4">
				<a href="StudentCreate.action">新規登録</a>
			</div>
				<form method="get">

					<div>
						<label class="form-label" for="student-fl-select">入学年度</label>
						<select class="form-select" id="student-fl-select" name="ent_year">
						    <option value="0">--------</option>
						    <c:forEach var="year" items="${yearList}">
						        <option value="${year}">${year}</option>
						    </c:forEach>
						</select>
					</div>

					<div>
					    <label class="form-label" for="student-no-input">学生番号</label>
					    <input type="text" class="form-control" id="student-no-input" name="no" value="${no}" maxlength="10" required placeholder="学生番号を入力してください">
					</div>

					<div>
					    <label class="form-label" for="student-no-input">氏名</label>
					    <input type="text" class="form-control" id="student-name-input" name="name" value="${name}" maxlength="30" required placeholder="氏名を入力してください">
					</div>

					<div>
					    <label class="form-label" for="class-num-select">クラス</label>
					    <select class="form-select" id="class-num-select" name="class_num">
					        <c:forEach var="classNum" items="${classList}">
					            <option value="${classNum}">${classNum}</option>
					        </c:forEach>
					    </select>
					</div>

					<div>
						<button class="btn btn-secondary" id="filter-burron">登録して終了</button>
					</div>
					<div class="btn text-warning">
						${errors.get("f1")}
					</div>
			</form>

				<a href="student_list.jsp">戻る</a>
</section>
</c:param>

</c:import>