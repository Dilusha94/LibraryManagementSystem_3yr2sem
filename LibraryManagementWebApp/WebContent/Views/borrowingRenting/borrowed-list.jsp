<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<!-- Custom fonts for this template-->
  <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="../../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../../css/sb-admin.css" rel="stylesheet">
  
</head>
<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark bg-primary static-top">

    <a class="navbar-brand mr-1" href="index.html">ARD Library</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
        <!-- 
          <a class="dropdown-item" href="#">Settings</a>
          <a class="dropdown-item" href="#">Activity Log</a> -->
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
        </div>
      </li>
    </ul>

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span>
        </a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-user"></i>
          <span>Member Management</span></a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="#">
          <i class="far fa-clipboard" style='font-size:22px'></i>
          <span>Stock</span></a>
      </li>
      <li class="nav-item dropdown ">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Borrowings & Returnings</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <a class="dropdown-item" href="borrowed-list.jsp">Borrowed List</a>
          <a class="dropdown-item" href="register.html">Lend Books</a>
          <a class="dropdown-item" href="tables.html">Return Books</a>
        </div>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-book"></i>
          <span>Returning</span></a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="#">
          <i class="far fa-money-bill-alt" ></i>
          <span>Finance</span></a>
      </li>
    </ul>
    <!-- /.Sidebar -->
    
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Borrowings</li>
        </ol>


        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fa fa-book" style="font-size:30px; color:#1566cf"></i>
            <b>Borrowings</b></div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr class = "table-primary">
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Borrower ID</th>
                    <th>Due-Date</th>
                    <th>Available copies</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Borrower ID</th>
                    <th>Due-Date</th>
                    <th>Available copies</th>
                    <th>Actions</th>
                  </tr>
                </tfoot>
                <tbody>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Cyber Security</td>
                    <td>Dr.Smith</td>
                    <td>U190001</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Computer Science</td>
                    <td>Dr.A.Peter</td>
                    <td>U190002</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Cyber Security</td>
                    <td>Dr.Smith</td>
                    <td>U190001</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Cyber Security</td>
                    <td>Dr.Smith</td>
                    <td>U190001</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Cyber Security</td>
                    <td>Dr.Smith</td>
                    <td>U190001</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Computer Science</td>
                    <td>Dr.A.Peter</td>
                    <td>U190002</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Cyber Security</td>
                    <td>Dr.Smith</td>
                    <td>U190001</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Cyber Security</td>
                    <td>Dr.Smith</td>
                    <td>U190001</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Computer Science</td>
                    <td>Dr.A.Peter</td>
                    <td>U190002</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Cyber Security</td>
                    <td>Dr.Smith</td>
                    <td>U190001</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Computer Science</td>
                    <td>Dr.A.Peter</td>
                    <td>U190002</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Cyber Security</td>
                    <td>Dr.Smith</td>
                    <td>U190001</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>978-3-16-148410-0</td>
                    <td>Computer Science</td>
                    <td>Dr.A.Peter</td>
                    <td>U190002</td>
                    <td>2011/04/25</td>
                    <td></td>
                    <td></td>
                  </tr>
                  
                </tbody>
              </table>
            </div>
          </div>
          
        </div>
        <!-- /.DataTables Example -->
      </div>
      <!-- /.container-fluid -->




      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>� Copyright 2019. All Rights Reserved. Powered by SLIIT</span>
          </div>
        </div>
      </footer>

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
            <span aria-hidden="true">�</span>
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

</body>
</html>