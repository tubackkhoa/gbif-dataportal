<%@ page contentType="text/plain" %><%@ include file="/common/taglibs.jsp"%><string:trim><tiles:insert page="mapSize.jsp" flush="false"/>
<c:forEach items="${searchResults}" var="country">${country.key}	<gbif:capitalize>${country.name}</gbif:capitalize>	<iframe src="http://${header.host}${pageContext.request.contextPath}/countries/${country.key}/mapWidget${mapUrlParam}" frameborder="0" hspace="1" vspace="1" scrolling="no" ${iframeDimensions}></iframe>
</c:forEach></string:trim>