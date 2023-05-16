<%@page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>
<style>
.bold{ font-weight: bold;}</style>
</head>
<body>

	<jsp:include page="../menus/_menuNormal.jsp"></jsp:include>
	<div style="text-align: center"><br><br><br>
		<h3>Welcome ${sessionScope.userIs.userLogin}</h3>
		<b>Your Profile Details</b>
		</div> <br> <br>
		<table style="margin-left: auto; margin-right: auto;">
			<tr>
				<td class="bold">User Name</td>
				<td>- ${sessionScope.userIs.userLogin}</td>
			</tr>
			<tr>
				<td class="bold">Password</td>
				<td>- ${sessionScope.userIs.userPass}</td>
			</tr>

			<tr>
				<td class="bold">Patient Name</td>
				<td>${sessionScope.userIs.patientName}</td>
			</tr>
			<tr>
				<td class="bold">Email</td>
				<td>${sessionScope.userIs.email}</td>
			</tr>
			<tr>
				<td class="bold">Phone Number</td>
				<td>${sessionScope.userIs.phoneNo}</td>
			</tr>
			<tr>
				<td class="bold">Date of Birth</td>
				<td>${sessionScope.userIs.birthDate}</td>
			</tr>
			<tr>
				<td class="bold">age</td>
				<td>${sessionScope.userIs.age}</td>
			</tr>
			<tr>
				<td class="bold">Physical Disability  </td>
				<td>${sessionScope.userIs.physicalDisability}</td>
			</tr>
			<tr>
				<td class="bold">Identity Proof</td>
				<td>${sessionScope.userIs.identityProof}</td>
			</tr>
			<tr>
				<td class="bold">Address</td>
				<td>${sessionScope.userIs.address}</td>
			</tr>

		</table>

	<br>

	<jsp:include page="../_footer.jsp"></jsp:include>
</body>
</html>
