<!-- Sidebar -->
<ul class="sidebar navbar-nav">
	<li class="nav-item"><a class="nav-link" href="../Dashboard/dashboard.jsp">
			<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
	</a></li>

	
			
	<li class="nav-item dropdown "><a class="nav-link dropdown-toggle"
		href="#" id="pagesDropdown" role="button" data-toggle="dropdown"
		aria-haspopup="true" aria-expanded="false"> <i
			class="fas fa-fw fa-user"></i> <span>Member Management</span>
	</a>
		<div class="dropdown-menu" aria-labelledby="pagesDropdown">
			<a class="dropdown-item" href="../memberManagement/member-list.jsp">Member List</a>
		</div></li>

<!-- stock -->
	<li class="nav-item dropdown "><a class="nav-link dropdown-toggle"
		href="#" id="pagesDropdown" role="button" data-toggle="dropdown"
		aria-haspopup="true" aria-expanded="false"> <i
			class="far fa-clipboard"></i> <span>Book Stock</span>
	</a>
		<div class="dropdown-menu" aria-labelledby="pagesDropdown">
			<a class="dropdown-item" href="../stockManagement/list-book.jsp">Book List</a>
		</div></li>

<!-- issue -->
	<li class="nav-item dropdown "><a class="nav-link dropdown-toggle"
		href="#" id="pagesDropdown" role="button" data-toggle="dropdown"
		aria-haspopup="true" aria-expanded="false"> <i
			class="fas fa-fw fa-book"></i> <span>Issue Books</span>
	</a>
		<div class="dropdown-menu" aria-labelledby="pagesDropdown">
			<a class="dropdown-item" href="../borrowingRenting/issued-book-list.jsp">Borrowed
				List</a> <a class="dropdown-item" href="../borrowingRenting/issue-book.jsp">Issue Books</a>
		</div></li>
		
<!-- returning -->
	<li class="nav-item "><a class="nav-link" href="#"> <i
			class="fas fa-fw fa-book"></i> <span>Returning</span></a></li>

<!-- finance -->
	<li class="nav-item dropdown "><a class="nav-link dropdown-toggle"
		href="#" id="pagesDropdown" role="button" data-toggle="dropdown"
		aria-haspopup="true" aria-expanded="false"> <i
			class="far fa-money-bill-alt"></i> <span>Finance</span>
	</a>
		<div class="dropdown-menu" aria-labelledby="pagesDropdown">
			<a class="dropdown-item" href="../FinancialManagement/list-incomes.jsp">Income List</a> <a
				class="dropdown-item" href="../FinancialManagement/list-expenses.jsp">Expense List</a>
		</div></li>
</ul>



<!-- /.Sidebar -->