<cfcomponent>
	
	<cffunction name="init">
		<cfargument name="fw" type="any">
		<cfset variables.fw = fw>
	</cffunction>
	
	<cffunction name="default">
		<cfset variables.fw.service("name.default","name")>
	</cffunction>

</cfcomponent>