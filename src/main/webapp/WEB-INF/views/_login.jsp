<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
<style>
#signUp {
	/* padding-top: 50px; */
	position: relative;
	background: #edf8f9;
	;
}
/* for signIn signUP option below nav bar  */
.option {
	text-align: center;
}

.options {
	display: inline-block;
	color: #3fbbc0;
	padding: 1rem 1rem;
	vertical-align: middle;
}
</style>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	<div class="clearfix secondary-nav option">
		<a href="${pageContext.request.contextPath}/login" class="options">SignIn</a>
		<a href="${pageContext.request.contextPath}/addUser" class="options">SignUp</a>
	</div>

	<section class="vh-80" style="margin-top: 5px;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">

				<div class="col-1"></div>
				<div class="col-10 col-md-8 col-lg-6 col-xl-5 ">
					<div class="card shadow-2-strong"
						style="border-radius: 1rem; border-color: rgb(16, 14, 14); border-radius: 5%;">
						<div class="card-body p-5 text-center "
							style="border-radius: 5%; color: #3cb2b7">

							<h3 class="mb-5 fw-bolder fs-1">Sign In</h3>
							<p style="color: red; text-align: center">${errorString}</p>
							<div style="margin-left: 70px">
								<form method="POST" action="validate">
									<table>
										<tr>
											<td>User Name</td>
											<td><input type="text" name="userName"
												value="${user.userLogin}" /></td>
										</tr>
										<tr>
											<td>Password</td>
											<td><input type="text" name="password"
												value="${user.userPass}" /></td>
										</tr>
										
									</table>
									
									<br>

									<div style="text-align: center; margin-right: 50px">
										<button class="btn btn-lg btn-block " type="submit"
											style="backround-color:">Submit</button>

									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="col-1"></div>
			</div>
		</div>
	</section>

	<jsp:include page="_footer.jsp"></jsp:include></bo
						dy>
</html>