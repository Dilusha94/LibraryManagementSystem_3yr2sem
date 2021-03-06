<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@page import="com.librarymgt.service.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Custom fonts for this template  -->

<link href="../../vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Page level plugin CSS-->
<link href="../../vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../../css/sb-admin.css" rel="stylesheet">

</head>
<body id="page-top">

	<jsp:include page="../header.jsp" />

	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="../side-bar.jsp" />
		<!-- /.Sidebar -->

		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Lending & Renting</a>
					</li>
					<li class="breadcrumb-item active">Book List</li>
				</ol>
				<p class="text-right" id="demo" style="margin: 0px"></p>

				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fa fa-book" style="font-size: 30px; color: #1566cf"></i>
						<b style="font-size: 25px">Book List</b>
						<a
							href="add-book.jsp" style="float: right"
							class="btn btn-outline-primary btn-sm " role="button"
							aria-pressed="true">Add Books</a>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr class="table-primary">
										<th>Book ID</th>
										<th>Title</th>
										<th>Category</th>
										<th>Author</th>
										<th>ISBN</th>
										<th>Copies</th>
										<th>Type</th>
										<th>Rent Fee</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Book ID</th>
										<th>Title</th>
										<th>Category</th>
										<th>Author</th>
										<th>ISBN</th>
										<th>Copies</th>
										<th>Type</th>
										<th>Rent Fee</th>
										<th>Actions</th>
									</tr>
								</tfoot>
								<tbody>

									<%
										String host = "jdbc:mysql://localhost:3306/library_management";
										Connection conn = null;
										Statement stat = null;
										ResultSet res = null;
										Class.forName("com.mysql.jdbc.Driver");
										conn = DriverManager.getConnection(host, "root", "");
										stat = conn.createStatement();
										String data = "SELECT * FROM book";
										res = stat.executeQuery(data);
										while (res.next()) {
									%>

									<tr>
										<td><%=res.getString("bid")%></td>
										<td><%=res.getString("bName")%></td>
										<td><%=res.getString("category")%></td>
										<td><%=res.getString("author")%></td>
										<td><%=res.getString("isbn")%></td>
										<td><%=res.getString("avilableCopy")%></td>
										<td><%=res.getString("rent_lend")%></td>
										<td><%=res.getString("renting_fee")%></td>
										<td>
											<table border="0">
												<tr>
													<td><a
														href="edit-book.jsp?u=<%=res.getString("bid")%>"
														class="btn btn-warning btn-sm">Edit</a></td>
													<td><a
														href="delete-book.jsp?d=<%=res.getString("bid")%>"
														class="btn btn-danger btn-sm" onclick="ConfirmDelete()">Delete</a></td>
												</tr>
											</table>
										</td>

									</tr>
									<%
										}
									%>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<!-- /.DataTables Example -->
			</div>
			<!-- /.container-fluid -->


			<!-- Sticky Footer -->
			<jsp:include page="../footer.jsp" />

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

	<script>
		function ConfirmDelete() {
			var x = confirm("Are you sure you want to delete?");
			if (x)
				return true;
			else
				return false;
		}
	</script>


</body>
</html>