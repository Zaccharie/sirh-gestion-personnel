<html>
<head>
	<meta charset="UTF-8">
	<title>SGP - App</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.0.0-alpha.6-dist/css/bootstrap.css">
</head>
<body>
	<h2>Hello Michael Jordan Ferre !</h2>
	<form name="monForm" method="post"
		action="http://localhost:8080/sgp/collaborateurs/editer">
		<input type="text" name="matricule" placeholder="matricule"><br>
		<input type="text" name="titre" placeholder="titre"><br>
		<input type="text" name="nom" placeholder="nom"><br> <input
			type="text" name="prenom" placeholder="prenom"><br> <input
			type="submit" value="envoyer">
	</form>
</body>
</html>
