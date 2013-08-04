<!--- <cfdump var="#rc.actorsList#"> --->

<cfinclude template="/fw1_rd/templates/head.cfm">

<cfoutput>
	<body>
		<div class="container">
			<div class="row">
				<div class="span4">
					<cfinclude template="/fw1_rd/templates/leftnav.cfm">
				</div>
				
				<div class="span8">
					<p class="text-info">Movies by Actor #rc.moviesList.first_name# #rc.moviesList.last_name#</p>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Title</th>
								<th>Description</th>								
								<th>Category</th>
								<th>Casting</th>
								<th>Price</th>
								<th>Rating</th>
								<th>Length</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<cfloop query="rc.moviesList">
								<tr>
									
									<td>#rc.moviesList.title#</td>
									<td>#rc.moviesList.description#</td>
									<td>#rc.moviesList.category#</td>
									<td>#rc.moviesList.actors#</td>
									<td>#rc.moviesList.price#</td>
									<td>#rc.moviesList.rating#</td>
									<td>#rc.moviesList.length#</td>
									<td><a href="">Edit Data</a></td>
								</tr>
							</cfloop>
						</tbody>
					</table>
					
				</div>
			</div>
		</div>
	
	</body>
</cfoutput>



</html>