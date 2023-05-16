<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
</head>
<body>

	<jsp:include page="../menus/_menuNormal.jsp"></jsp:include>
	<div style="text-align: center">
		<br>
		<br>
		<br>
		<h3>Edit User Now</h3>
		<h3>Welcome ${sessionScope.userIs.userLogin}</h3>
		<div>
			<p style="color: red;">${errorString}</p>

			<c:if test="${not empty editUser}">
				<form method="POST" action="doEditUser">
					<input type="hidden" name="loginId" value="${editUser.userLogin}" />
					<table style="margin-left: auto; margin-right: auto;">
						<tr>
							<td>Login Id</td>
							<td style="color: red;">${editUser.userLogin}</td>
						</tr>
						<tr>
							<td>Password</td>
							<td><input type="text" name="password"
								value="${editUser.userPass}" /></td>
						</tr>

						<tr>
							<td>Patient Name</td>
							<td><input type="text" name="patientName"
								value="${editUser.patientName}" /></td>
						</tr>
						<tr>
							<td>Email</td>
							<td><input type="text" name="email"
								value="${editUser.email}" /></td>
						</tr>
						<tr>
							<td>Phone Number</td>
							<td><input type="text" name="phoneNo"
								value="${editUser.phoneNo}" /></td>
						</tr>

						<tr>
							<td>Birth Date</td>
							<td><input type="text" name="birthDate"
								value="${editUser.birthDate}" /></td>
						</tr>
						<tr>
							<td>Age</td>
							<td><input type="text" name="age" value="${editUser.age}" /></td>
						</tr>
						<tr>
							<td>Physical Disability</td>
							<td><input type="text" name="physicalDisability"
								value="${editUser.physicalDisability}" /></td>
						</tr>
						<tr>
							<td>Identity Proof</td>
							<td><input type="text" name="identityProof"
								value="${editUser.identityProof}" /></td>
						</tr>
						<tr>
							<td>Address</td>
							<td><input type="text" name="address"
								value="${editUser.address}" /></td>
						</tr>

					</table>
					<br>
					<div style="text-align: center; margin-right: 50px">
						<button class="btn btn-lg btn-block " type="submit"
							style="backround-color:">Submit</button>

					</div>
				</form>
			</c:if>
			<br>
</body>
</html>