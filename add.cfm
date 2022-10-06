<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

<cfoutput>
	<cfset studentDetails = entityNew( 'student' ) />
	<cfif structkeyexists( form, "submit" )>
		<cfset studentDetails.setname( form.name ) />
		<cfset studentDetails.setage( form.age ) />
		<cfset entitySave( studentDetails )>
		<cflocation url="index.cfm">
	</cfif>
	<div class="border shadow-lg pb-5 container mt-5">
		<div class="container">
			<div class="row text-center pt-3"><h4>Edit data</h4></div>
				<form method="post" class="mt-3 p-5">
				<div class="row">
					<div class="col-md-6"><label for="name">Name: </label></div>
					<div class="col-md-6"><input type="text" name="name" class-"form-control"></div>
				</div>
				<div class="row">
					<div class="col-md-6"><label for="age">Age: </label></div>
					<div class="col-md-6"><input type="text" name="age" class-"form-control"></div>
				</div>
				<div class="text-center mt-3">
					<input type="submit" value="Submit" name="submit" class="btn btn-success">
				</div>
			</form>
			</div>
		</div>
	</div>
</cfoutput>