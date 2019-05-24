<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Incomes</title>

	<!-- Custom fonts for this template-->
  <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="../../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../../css/sb-admin.css" rel="stylesheet">
  
</head>
<body id="page-top">

	<jsp:include page="../header.jsp"/>

  <div id="wrapper">

    <!-- Sidebar -->
    <jsp:include page="../side-bar.jsp"/>
    <!-- /.Sidebar -->
    
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Finance</a>
          </li>
          <li class="breadcrumb-item active">Add Income Records</li>
        </ol>
		<p class="text-right" id="demo" style="margin:0px"></p>
		
		
        <!-- form content -->
        
        <div class="form-container">
  			<div class="row">
    			<div class="col">
    		</div>
    		<div class="col-6">
     			<form class="border border-light p-5" action="../../AddIncomeServlet" method="post">
     			<p class="h3 mb-4">Add Incomes</p></br>
    				<div class="form-group">
        				<label for="date">Date</label>
        				<input type="date" class="form-control" id="date" name="date">
    				</div>
    				<div class="form-group">
        				<label for="description">Description</label>
        				<input type="text" class="form-control" id="description" name="description" >
    				</div>
    				<div class="form-group">
        				<input type="hidden" value="income" class="form-control" id="type" name="type">
    				</div>
    				<div class="form-group">
        				<label for="amount">Amount</label>
        				<input type="number" class="form-control" id="amount" name="amount" >
    				</div>
    			<button type="submit" class="btn btn-primary">Enter</button>
				</form>
    		</div>
    	<div class="col">
      
    </div>
  </div>
  
</div>
        
       
        
		
	
<!-- ./ form content -->
      
      </div>
      <!-- /.container-fluid -->

	
      <!-- Sticky Footer -->
      <jsp:include page="../footer.jsp"/>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
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