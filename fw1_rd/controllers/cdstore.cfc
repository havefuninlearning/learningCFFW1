<cfcomponent>
	<cffunction name="init">
		<cfargument name="fw" type="any">
		<cfset variables.fw = fw>
	</cffunction>
	
	<cffunction name="validateStaff">
		<cfparam name="rc.username" default="">
		<cfparam name="rc.password" default="">
		<cfset rc.test = "test">
		<cfset variables.fw.service("login.validate", "data",#rc#)>
	</cffunction>
	
	<cffunction name="endvalidateStaff" hint="Do the actual login" output="false">
		<cfargument name="rc">
		
		<cfif NOT rc.data>
			<cfset variables.fw.redirect("#variables.fw.getSection()#.stafflogin")>
		<cfelse>
			<cfset variables.fw.redirect("#variables.fw.getSection()#.store")>
		</cfif>
	</cffunction>
	
	<cffunction name="actors">
		
		<cfset variables.fw.service("cdstore.getActors","actorsList")>
	
	</cffunction>
	
	<cffunction name="moviesByActors">
		<cfset variables.fw.service("cdstore.getMoviesByActor", "moviesList", #rc#)>
	</cffunction>
</cfcomponent>