<cfcomponent>
	
	<cffunction name="validate">
		<cfargument name="username" required="false" type="string" default="">
		<cfargument name="password" required="false" type="string" default="">
		
		<cfif arguments.username EQ "admin" and arguments.password EQ "admin">
			<cfset variables.success = "true">
		<cfelse>
			<cfset variables.success = "try again">
		</cfif>
		
		<cfreturn "#variables.success#">
	</cffunction>
</cfcomponent>