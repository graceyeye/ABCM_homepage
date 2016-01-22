<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
function login(f){
	
	var a = confirm("로그인 하시겠습니까?");
	
	if(a==true){
		f.method='POST';
		f.action='login.do';
		f.submit();
	}
	
}
</script>

<div id="login" >
	<h1>login Page</h1>
	<br><br><br><br><br><br><br><br><br><br><br>
		<form>
			ID<input type="text" name="id" value="" placeholder="Insert your id">
			PWD<input type="password" name="pwd" value="" placeholder="********">
			<input type="button" value="LOGIN" onclick="login(this.form);"><br>
		</form>
	
</div>