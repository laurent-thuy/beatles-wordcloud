<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<title>Beatles word cloud</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%@ include file="includes/nav.jsp"%>

	<a class="next" href="#">
		<section></section>
	</a>

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
	<script type="text/javascript" src="data/songs.js"></script>
	<script type="text/javascript" src="jslib/colorbrewer.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>