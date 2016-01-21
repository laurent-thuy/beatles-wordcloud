<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<title>TODO supply a title</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<%@ include file="includes/header.jsp"%>
		<%@ include file="includes/nav.jsp"%>
		<div class="row">
			<div class="col-md-6 col-md-offset-3"></div>
		</div>
	</div>



	<%@ include file="includes/nav.jsp"%>
	<%@ include file="includes/nav.jsp"%>

	<div id="vis"></div>

	<div class="container">
		<%@ include file="includes/footer.jsp"%>
	</div>
	<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="jslib/d3/d3.js"></script>
	<script type="text/javascript"
		src="jslib/d3-cloud/build/d3.layout.cloud.js"></script>
	<script type="text/javascript" src="js/songs.js"></script>
	<script type="text/javascript" src="js/word-cloud.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>