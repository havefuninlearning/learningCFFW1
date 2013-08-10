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
								
									<cfset variables.editParams = "title=#rc.moviesList.title#">
									<cfset variables.editParams = listAppend(variables.editParams, "description=#rc.moviesList.description#")>
									<cfset variables.editParams = listAppend(variables.editParams, "category=#rc.moviesList.category#")>
									<cfset variables.editParams = listAppend(variables.editParams, "actors=#rc.moviesList.actors#")>
									<cfset variables.editParams = listAppend(variables.editParams, "price=#rc.moviesList.price#")>
									<cfset variables.editParams = listAppend(variables.editParams, "rating=#rc.moviesList.rating#")>
									<cfset variables.editParams = listAppend(variables.editParams, "length=#rc.moviesList.length#")>
									
										
									
 									
								<!---	<input type"hidden" name="description" value="#rc.moviesList.description#">
									<input type"hidden" name="category" value="#rc.moviesList.category#">
									<input type"hidden" name="actors" value="#rc.moviesList.actors#">
									<input type"hidden" name="price" value="#rc.moviesList.price#">
									<input type"hidden" name="rating" value="#rc.moviesList.rating#">
									<input type"hidden" name="length" value="#rc.moviesList.length#"> --->
									<td>
										<!--- <a href="" class="editData">Edit Data</a> --->
										<a class="editData" href="#buildUrl('cdstore.editMovies')#">Edit me</a>
										<!--- <a class="editData" href="#buildUrl('cdstore.editMovies?title=BEAST HUNCHBACK')#">Edit me</a> --->
										<input type="hidden" name="title" class="title" value="#rc.moviesList.title#">
										<input type="hidden" name="description" class="description" value="#rc.moviesList.description#">
										<input type="hidden" name="category" class="category" value="#rc.moviesList.category#">
										<input type="hidden" name="actors" class="actors" value="#rc.moviesList.actors#">
										<input type="hidden" name="price" class="price" value="#rc.moviesList.price#">
										<input type="hidden" name="rating" class="rating" value="#rc.moviesList.rating#">
										<input type="hidden" name="length" class="length" value="#rc.moviesList.length#">
									</td>
								</tr>
							</cfloop>
						</tbody>
					</table>
					
				</div>
			</div>
		</div>
		
		<!-- Modal -->
		<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"  aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3 id="myModalLabel">Modal header</h3>
			</div>
			<div class="modal-body">
				
			</div>
			<div class="modal-footer">
				<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
				<button class="btn btn-primary" id="saveChanges">Save changes</button>
			</div>
		</div>
	</body>
</cfoutput>

<script type="text/javascript">
	$(".editData").bind("click", function(e){
		
	e.preventDefault();
	
	$('#myModal').removeData("modal")
        $('#myModal').modal({remote: $(this).attr("href")})
        var hrefThis = $(this);
        
		$("#myModal").on("shown", function(e){
			
			var editParams = hrefThis.next().val();
			//console.log(editParams);
			editParams = editParams.split(",");
			$("#editTitle").val($(".title").val());
			$("#editDescription").val($(".description").val());
			$("#editCategory").val($(".category").val());
			$("#editCasting").val($(".actors").val());
			$("#editPrice").val($(".price").val());
			$("#editRating").val($(".rating").val());
			$("#editLength").val($(".length").val());
		});
		//console.log($(".modal-body").html());
	});
	
	
	
	
</script>

</html>