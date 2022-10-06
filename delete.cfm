<cfoutput>
    <cfset deleteData = entityLoadByPK( 'student', url.id ) />
    <cfset entityDelete( deleteData ) />
    <cflocation url="index.cfm">
</cfoutput>