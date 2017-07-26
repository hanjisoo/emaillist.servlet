<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 리스트 가입</h1>
	<p>
		메일 리스트에 가입하려면,<br> 아래 항목을 기입하고 submit 버튼을 클릭하세요.
	</p>
	<form action="/emaillist.2/el" method="post"> <!-- /는 8088R까지 주소 ""주소요청-->
		Last name(성): <input type="text" name="ln" value=""><br>
		First name(이름): <input type="text" name="fn" value=""><br>
		Email address: <input type="text" name="email" value=""><br>
		<input type="text" name="a" value="insert"><br>  <!-- 사용자가 insert서비스 이용 /emaillist.2/el?a=insert라고 쓰면 /el?a=insert?ln=~ 이런식으로 이상하게써지겠지 -->
														<!-- 이케써야  /emaillist.2/el?ln=~and?fn=~and?email=~and?a=insert 이케 경로 안겹치게 이쁘게나옴 -->
		<input type="submit" value="등록">
		
	</form>
	<br>
	<p>
		<a href="/emaillist.2/el">리스트 바로가기</a> <!-- a값안쓰면 리스트로 보냄 -->
	</p>
</body>
</html>