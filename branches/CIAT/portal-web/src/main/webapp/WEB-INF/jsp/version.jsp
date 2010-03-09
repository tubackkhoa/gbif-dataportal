<%@ include file="/common/taglibs.jsp"%>
<div id="twopartheader">	
	<h2><spring:message code="version"/> <gbif:propertyLoader bundle="portal" property="version"/> (Published: <gbif:propertyLoader bundle="portal" property="versionDate"/>)</h2>
	<h3><spring:message code="version.features"/></h3>
</div>
<ul class="genericList">
	<li><a href="${pageContext.request.contextPath}/countries/AR">Maps</a> - Switched from MapServer to GeoServer as the map content provider for the data portal</li>
	<li><a href="${pageContext.request.contextPath}/occurrences/45340996/rawProviderMessage/">Original record from data provider</a> - Improved user experience while downloading the original record from the provider</li>
	<li>Several GUI enhancements</li>
</ul>
<a href="${pageContext.request.contextPath}/bugs.htm">Click here</a> for a complete list of fixes/enhancements in this version

<h4>Features added in version 1.2.4 (Published: June, 2009)</h4>
<ul class="genericList">
	<li><a href="${pageContext.request.contextPath}/occurrences/search.htm?c[0].s=0&c[0].p=0&c[0].o=Desmidium+swartzii&c[1].s=37&c[1].p=0&c[1].o=0">Image filter for Occurrence search</a> - Occurrence search now includes searching for records with images</li>
	<li><a href="${pageContext.request.contextPath}/countries/AR">Data statistics on Countries' pages</a> - New statistics on host countries providing georeferenced records for other countries</li>
	<li>Several GUI enhancements</li>
</ul>

<h4>Features added in version 1.2.3 (Published: February, 2009)</h4>
<ul class="genericList">
	<li><a href="${pageContext.request.contextPath}/ws/">Web Services performance improvement</a> - response times have been lowered considerably</li>
	<li><a href="${pageContext.request.contextPath}/occurrences/search.htm?c[0].s=36&c[0].p=0&c[0].o=6788">World Database on Protected Areas (WDPA) now covering all areas</a></li>
	<li><a href="${pageContext.request.contextPath}/occurrences/">Country filter for Protected Areas</a></li>
</ul>

<h4>Features added in version 1.2.2 (Published: 2008)</h4>
<ul class="genericList">
	<li><a href="${pageContext.request.contextPath}/occurrences/">Indexing & search capabilites for altitude and depth fields</a></li>
</ul>

<h4>Features added in version 1.2.1 (Published: 2008)</h4>
<ul class="genericList">
    <li><a href="${pageContext.request.contextPath}/species/Puma_concolor">OGC Mapping Services (Beta)</a> - incorporate mapping into your own application</li>
    <li><a href="${pageContext.request.contextPath}/settings.htm">The first version of the Spanish translation of the portal</a></li>
    <li><a href="${pageContext.request.contextPath}/occurrence/setupModel.htm?c[0].s=0&c[0].p=0&c[0].o=Puma%20concolor">Niche Modelling integration with openModeller (Beta)</li>
    <li><a href="${pageContext.request.contextPath}/countries/datasharing">Data Sharing with countries of origin</a></li>
</ul>