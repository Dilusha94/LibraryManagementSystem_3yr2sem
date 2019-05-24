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
					<li class="breadcrumb-item"><a href="#">Member Management</a>
					</li>
					<li class="breadcrumb-item active">Member List</li>
				</ol>
				<p class="text-right" id="demo" style="margin: 0px"></p>

				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fa fa-book" style="font-size: 30px; color: #1566cf"></i>
						<b style="font-size: 25px">Member List</b>
						
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr class="table-primary">
										<th>Member ID</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Username</th>
										<th>Mobile</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Member ID</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Username</th>
										<th>Mobile</th>
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
										String data = "SELECT * FROM user";
										res = stat.executeQuery(data);
										while (res.next()) {
									%>

									<tr>
										<td><%=res.getString("id")%></td>
										<td><%=res.getString("first_name")%></td>
										<td><%=res.getString("last_name")%></td>
										<td><%=res.getString("username")%></td>
										<td><%=res.getString("contact")%></td>
										<td>
											<table border="0">
												<tr>
													<td><a
														href="edit-book.jsp?u=<%=res.getString("id")%>"
														class="btn btn-warning btn-sm">Edit</a></td>
													<td><a
														href="#?u=<%=res.getString("id")%>"
														class="btn btn-primary btn-sm">Profile</a></td>
													<td><a
														href="delete-member.jsp?d=<%=res.getString("id")%>"
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
			var x = confirm("Are you sure you want to delete this Member?");
			if (x)
				return true;
			else
				return false;
		}
	</script>


</body>
</html>