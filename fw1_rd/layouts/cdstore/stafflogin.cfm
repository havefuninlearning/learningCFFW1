<!DOCTYPE html>

<html>
<head>
    <title>Page Title</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" href="bootstrap/css/bootstrap-responsive.css" />
	<link rel="stylesheet" href="bootstrap/css/custom.css" />
</head>

<body>
<!--- <div class="row">
		<div class="span12">
			<h1><h1>Welcome to CD Store Staff Login Page</h1></h1>
		</div>
	</div> --->
	<div class="container">
		<!--- <div class="row">
			<div class="span12"> --->
				<cfoutput>
					<form name="staffloginForm" method="post" action="#buildUrl('cdstore.validateStaff')#">
							<label for="username">UserName</label>
							<input name="username" id="username" type="text" value="" />

							<label for="password">Password</label>
							<input name="password" id="password" type="password" value="" / >
							
							<div>
							<input class="btn btn-primary" name="submit" type="submit" value="Login" />
							</div>
				
					</form>
				</cfoutput>
				

			<!--- </div>
		</div> --->
	</div>
</body>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>

</html>


