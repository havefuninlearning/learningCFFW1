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
					<table class="table table-bordered table-striped table-condensed">
						<thead>
							<tr>
								<th>List of Actors</th>
							</tr>
						</thead>
						<tbody>
							<cfloop query="rc.actorsList">
								<tr>
									
									<td>
										<a href="#buildUrl('cdstore.moviesByActors?actorid=#rc.actorsList.actor_id#')#">#rc.actorsList.first_name# #rc.actorsList.last_name#</a>
									</td>
									
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