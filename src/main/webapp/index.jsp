<%@ page import="com.db.Dbconnect" %>
<%@ page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/css.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	

	<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="images/1.jpg" class="d-block w-100" alt="..."
					height="400px">
			</div>
			<div class="carousel-item">
				<img src="images/2.jpg" class="d-block w-100" alt="..."
					height="400px">
			</div>
			<div class="carousel-item">
				<img src="images/3.jpg" class="d-block w-100" alt="..."
					height="400px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<div class="container p-3">
		<p class="text-center fs-2 ">Key Features of our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<img alt="" src="images/doc.jpg" width="400px" height="400px">
			</div>



			<hr>



			<div class="container p-2">
				<p class="text-center fs-2 ">Our Team</p>

				<div class="row">
					<div class="col-md-3">
						<div class="card paint-card">
							<div class="card-body text-center">
								<img src="images/5.jpg" width=200px height="300px">
								<p class="fw-bold fs-5">Samuani Simi</p>
								<p class="fs-7">(CEO & Chairman)</p>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card paint-card">
							<div class="card-body text-center">
								<img src="images/8.jpg" width="200px" height="300px">
								<p class="fw-bold fs-5">Dr.Siva Kumar</p>
								<p class="fs-7">(Chief Doctor)</p>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card paint-card">
							<div class="card-body text-center">
								<img src="images/7.jpg" width="200px" height="300px">
								<p class="fw-bold fs-5">Dr. Niuise Paule</p>
								<p class="fs-7">(Chief Doctor)</p>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card paint-card">
							<div class="card-body text-center">
								<img src="images/6.jpg" width="200px" height="300px">
								<p class="fw-bold fs-5">Dr. Mathue Samuel</p>
								<p class="fs-7">(Chief Doctor)</p>
							</div>
						</div>
					</div>

				</div>

			</div>
			<%@include file="component/footer.jsp"%>
</body>
</html>