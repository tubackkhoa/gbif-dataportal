<%@ include file="/common/taglibs.jsp"%>
<c:set var="entityLink" scope="request">countries/${country.isoCountryCode}</c:set>
<c:set var="mapDescription" scope="request">
<c:if test="${param['size']!='small'}">
Specimen and observational data	recorded in 
</c:if>
<span class="subject"><a href="http://${header.host}${pageContext.request.contextPath}/countries/${country.isoCountryCode}" target="_top">${country.name}</a></span><br/>
<c:if test="${param['size']!='small'}">from the </c:if>Global Biodiversity Information Facility Network
</c:set>
<tiles:insert page="/WEB-INF/jsp/geography/mapWidget.jsp"/>