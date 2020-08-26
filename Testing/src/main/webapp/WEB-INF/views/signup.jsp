<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title><fmt:message code="factory.form.label.factory.form" /></title>

<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap/jquery.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
</head>
<body>
	<form:form action="/saveDataAction" method="post" id="saveDataId">

		<table style="margin-left: 20%" border="1">

			<tr>
				<td><fmt:message code="lbl.name" /></td>
				<td><input type="text" name="userName"></td>
			</tr>
			<tr>
				<td><fmt:message code="lbl.pass" /></td>
				<td><input type="password" name="userPassword"></td>
			</tr>
			<tr>
				<td><fmt:message code="lbl.email" /></td>
				<td><input type="text" name="userEmail"></td>
			</tr>
			<tr>
				<td><fmt:message code="lbl.salary" /></td>
				<td><input type="text" name="userSalary"></td>
			</tr>

			<tr>
				<td><button type="submit" class="btn btn-primary">
						<fmt:message code="lbl.save" />
					</button></td>
			</tr>

		</table>

	</form:form>

</body>
<script type="text/javascript">
	function saveData() {

	}
	/* $.ajax({
	 type: "POST",
	 url: url,
	 data: data,
	 success: success,
	 dataType: dataType
	 }); */
</script>
</html>