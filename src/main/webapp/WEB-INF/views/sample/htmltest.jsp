<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>html5 테스트 입니다.</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="/resources/js/user.js"></script>
<style></style>
</head>
<body>
	<h1>HTML 이란?</h1>
	<H2>HTML 의 역사</H2>
	<H3>팀 버너스리에 대해</H3>
	<H4>HTML 의 태그</H4>
	<H5>HTML 의 태그</H5>
	<a href="/htmltest">페이지 다시 로딩-불러오기</a>
	<img src="/resources/images/summer.jpg" alt="해바라기사진">
	<p>
		<strong>이것은</strong> 문단입니다.<br> <b>이것은</b> 문단입니다.
	</p>
	<p>이것은 &nbsp;&nbsp;&nbsp; &amp; &lt; &gt; &copy; 특수문자 입니다.
	<hr>
	</p>
	<ul>
		<li>리스트1</li>
		<li>리스트2</li>
	</ul>
	<ol>
		<li>리스트1</li>
		<li>리스트2</li>
	</ol>
	<div>
		<h2>회원가입폼 입니다</h2>
		<form method="post" action="/htmltest">
			성별을 선택해 주세요 <select name="gender">
				<option value="M">남자</option>
				<option value="F">여자</option>
			</select> <br> <input type="text" name="userid"
				placeholder="사용자 아이디를 입력해 주세요"> <input type="file"
				name="upload_file">
			<textarea name="contents" cols="100" rows="5">여기에 글을 입력하세요.</textarea>
			<input type="submit" name="submit" value="회원가입">
		</form>
	</div>
	<br>
	<table summary="OO학교 OO반 성적표" style="border:1px solid black">
	<caption>이 테이블은 학생들의 성적표 입니다.</caption>
	<tr>
	<th>이름</th>
	<th>성적</th>
	</tr>
	<tr>
	<td>김일국</td>
	<td>15</td>
	</tr>
	<tr>
	<td colspan="2">BBB</td>
	</tr>
	<tr>
	<td>CCC</td>
	<td>15</td>
	</tr>
	</table>
</body>
</html>