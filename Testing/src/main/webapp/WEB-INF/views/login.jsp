<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title><fmt:message code="lbl.load.login.screen.title" /></title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>

<style type="text/css">
.alert-danger, .alert-error {
	color: #b94a48;
	background-color: #f2dede;
	border-color: #eed3d7;
	display: none;
}

.alert-success, .alert-success {
	color: #468847;
	background-color: #dff0d8;
	border-color: #d6e9c6;
	display: none;
}
</style>
</head>
<body>

	<table style="margin-left: 10%">

		<tr>
			<td><fmt:message code="lbl.name" /></td>
			<td><input type="text" name="userName" id="userName"></td>
		</tr>
		<tr>
			<td><fmt:message code="lbl.pass" /></td>
			<td><input type="password" name="userPassword" id="userPassword"></td>
		</tr>

		<tr>
			<td><button type="button" class="btn btn-primary"
					onclick="loadLoginData()">
					<fmt:message code="lbl.login" />
				</button></td>
		</tr>

	</table>
	<div class="alert alert-success" id="success">
		<strong>Success !</strong>
	</div>

	<div class="alert alert-danger" id="error">
		<strong>Error !</strong>
	</div>

</body>
<script type="text/javascript">
	function loadLoginData() {
		var userName = $('#userName').val();
		var userPassword = $('#userPassword').val();
		//var url = "${pageContext.request.contextPath}/getLoggedIn.html";
		var jsondata = {};
		jsondata.userName = userName;
		jsondata.userPassword = userPassword;

		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/getLoggedIn.html",
			data : jsondata,
			async : true,
			timeout : 10000,
			error : function(jqXHR) {
			},
			success : function(data) {
				var responseStatus = JSON.parse(data);
				if (responseStatus == '200') {
					$("#success").show();

				} else if (responseStatus == '300') {
					$("#error").show();
				}
			}
		});

	}
</script>
</html>