

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<div>
	<nav class="navbar navbar-expand-lg  " style="background-color: #B9F3E4;">
		<div class="container-fluid ">
			<a class="navbar-brand fw-bolder fs-1">Metico</a>
			
			<div style="margin-left: 900px" class="collapse navbar-collapse"
				id="navbarScroll">
				<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
					style="-bs-scroll-height: 100px;">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home"> <!-- Button trigger modal -->

							<button type="button" class="btn " data-bs-toggle="modal"
								data-bs-target="#exampleModal" id="category">Home</button>

					</a> <!-- Modal pop down category of veg fruits spices --></li>

					<!--basket button to jump on my basket page-->
					<li class="nav-item"><a class="nav-link" href="home">
							<button class="btn " type="button">About</button>
					</a></li>

					<!---for address button to choose address-->

					<!-- myorder button to jump on my my order page-->

					<li class="nav-item"><a class="nav-link " href="allOrders">
							<!-- Button trigger modal -->
							<button type="button" class="btn  ">Department</button>
					</a></li>
					
					<li class="nav-item"><a class="nav-link " href="addUser">
							<!-- Button trigger modal -->
							<button type="button" class="btn ">Sign Up/Sign In</button>
					</a></li>
				</ul>


			</div>
		</div>
	</nav>
</div>