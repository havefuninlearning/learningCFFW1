<cfcomponent>

	<cffunction name="getActors" returntype="query">
		
		<cfquery name="getActors" datasource="sakila">
			SELECT
				actor_id,first_name, last_name
			FROM
				actor
			ORDER BY 
				first_name, last_name
		</cfquery>
		
		<cfreturn getActors>
	</cffunction>
	
	<cffunction name="getMoviesByActor" returntype="query">
		<cfargument name="actorid" type="any">
		
		<cfquery name="getMoviesByActor" datasource="sakila">
			SELECT
				a.film_id, a.actor_id, c.first_name,c.last_name,
				b.title, b.description, b.category, b.price,
				b.length, b.rating, b.actors
			FROM
				film_actor a 
					INNER JOIN film_list b on a.film_id = b.FID
					INNER JOIN actor c on a.actor_id = c.actor_id
			WHERE 
				a.actor_id = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.actorid#">
			ORDER BY
				title
		</cfquery>
		
		<cfreturn getMoviesByActor>
	</cffunction>
</cfcomponent>