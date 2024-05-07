<!DOCTYPE html>
<html>
<head>
	<title>Create Librarian Account</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<style>
html {
	background-image: url(booooooook.jpg);
}
.navbar {
	background-color: grey;
	position: sticky;
}
.centered {
	background-color: #0c0914;
	opacity: .6;
	color: white;
	left: 50%;
	padding: 50px 70px;
	border-radius: 30px;
}
input{
	border-radius: 50px;
	height: 30px;
	width: 200px;
}
button{
	height: 40px; 
	width: 80px; 
	font-size: 20px;
}
</style>
<body >
<input type = "hidden" id = "status" value = "<%= request.getAttribute("status")%>">
	<header style="z-index: 1;">
		<nav class="navbar">
			<a href="index.jsp">HOME</a>
			<p style="margin-left: 10px;">ASTU LIBRARY MANAGEMENT SYSTEM</p>
		</nav>
	</header>
	<div>
		<div class="centered" style="text-align: center; font-size: 20px; margin-top: 150px;">
			<h2>Create Account For Stuff </h2>
			<form action="createlibacc" method="post">
				<label for="userid">User ID&emsp;&emsp;&emsp; &emsp;</label>
				<input type="text" name="userid" required><br><br><br>
				<label for="name">Name&emsp;&emsp;&emsp;&ensp; &emsp;</label>
				<input type="text" name="name" required><br><br><br>	
				<label for="emailid">Email ID&emsp;&emsp;&nbsp; &emsp;</label>
				<input type="text" name="emailid" required><br><br><br>	
				<label for="password">Password&emsp;&emsp; &emsp;</label>
				<input type="password" name="password" required><br><br><br>
				<label for="age">Age&emsp;&emsp;&emsp;&emsp; &emsp;</label>
				<input type="text" name="age" required><br><br><br>
				<label for="gender">Gender&emsp;&emsp;&ensp; &emsp;</label>
				<input type="text" name="gender" required><br><br><br>
				<label for="dob">Date of birth &nbsp;&emsp;</label>
				<input type="date" name="dob" required><br><br><br>
				<button type="submit" value="login" style="border-radius: 10px;">Create</button>&emsp;
				<button type="reset" value="cancel" style="border-radius: 10px;">Cancel</button><br><br>
			</form>
		</div>
	</div>
	<!-- JS -->
  
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="js/main.js"></script>
  
  <!--
 
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css">
  -->
  <script type="text/javascript" src = "sweetalert.min.js"></script>
  
  <script type="text/javascript">
     var status = document.getElementById("status").value;
     if(status == "success"){
       swal("Congrat" , "Acoount Created Successfuly", "success");
     }
  </script>
</body>
</html>
