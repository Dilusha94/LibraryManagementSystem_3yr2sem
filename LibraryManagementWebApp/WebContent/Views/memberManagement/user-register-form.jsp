<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member SignUp</title>

<!-- Custom fonts for this template-->
<link href="../../vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Page level plugin CSS-->
<link href="../../vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../../css/sb-admin.css" rel="stylesheet">

</head>
<body id="page-top">



	<div id="wrapper">



		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">ARD Library</a></li>
					<li class="breadcrumb-item active">Member SignUp</li>
				</ol>
				<p class="text-right" id="demo" style="margin: 0px"></p>


				<!-- form content -->

				<div class="form-container">
					<div class="row">
						<div class="col"></div>

						<div class="col-4">
							<form class="border border-secondary p-4 "
								action="../../UserServlet" method="post">
								<center>
									<p class="h3 mb-4 text-primary">Sign Up</p>
								</center>
								<hr />
								<br />

								<div class="form-group col-md">
									<label for="f-name">First Name</label> <input type="text"
										class="form-control" name="f-name" required>
								</div>
								<div class="form-group col-md">
									<label for="l-name">Last Name</label> <input type="text"
										class="form-control" name="l-name" required>
								</div>


								<div class="form-group col-md">
									<label for="username">Username</label> <input type="text"
										class="form-control" name="username" required>
								</div>
								<div class="form-group col-md">
									<label for="password">Password</label> <input type="password"
										class="form-control" name="password" required>
								</div>

								<div class="form-group col-md">
									<label for="address">Address</label>
									<textarea class="form-control" name="address" required></textarea>
								</div>

								<div class="form-group col-md">
									<label for="contact">Mobile</label> <input type="number"
										class="form-control" name="contact" required>
								</div>
								<center>

									<button type="submit" class="btn btn-primary">Sign Up</button>
								</center>
							</form>

						</div>
						<div class="col"></div>
					</div>

				</div>
				<!-- ./ form content -->

				<br /> <br />

			</div>
			<!-- /.container-fluid -->




		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">�</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>



	<!-- Bootstrap core JavaScript-->
	<script src="../../vendor/jquery/jquery.min.js"></script>
	<script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugin JavaScript-->
	<script src="../../vendor/datatables/jquery.dataTables.js"></script>
	<script src="../../vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../../js/sb-admin.min.js"></script>

	<!-- Demo scripts for this page-->
	<script src="../../js/demo/datatables-demo.js"></script>

	<!-- Date time show -->
	<script>
		var d = new Date();
		document.getElementById("demo").innerHTML = d.toDateString();
	</script>

</body>
</html>