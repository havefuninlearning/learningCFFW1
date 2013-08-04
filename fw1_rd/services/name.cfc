<cfcomponent>

	<cffunction name="default">
		<cfargument name="name" type="string" default="anonymous">
		
		<cfreturn "so called " & arguments.name>
	</cffunction>
</cfcomponent>