<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

<cfoutput>
	<cfset studentDetails = entityLoad( 'student' ) />
	<div class="border shadow-lg pb-5 container mt-5">
		<div class="container">
			<table class="table table-bordered mt-5">
				<h6 class="text-center mt-5">Sample table</h6>
				<div align="right">
					<a href="add.cfm" class="btn btn-secondary btn-sm">Add new+</a>
				</div>
				<tr>
					<td>Id</td>
					<td>Name</td>
					<td>Age</td>
					<td>Edit</td>
					<td>Delete</td>
				</tr>
				<cfloop array=#studentDetails# index="item">
					<tr>
						<td>#item.getid()#</td>
						<td>#item.getname()#</td>
						<td>#item.getage()#</td>
						<td><a href="edit.cfm?id=#item.getid()#">Edit</a></td>
						<td><a href="delete.cfm?id=#item.getid()#">Delete</a></td>
					</tr>
				</cfloop>
			</table>
		</div>
	</div>
</cfoutput>