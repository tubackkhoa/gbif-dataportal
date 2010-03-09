<%@ include file="/common/taglibs.jsp"%>
<script type="text/javascript">
function toggleTables(firstTable, secondTable, visibleClass){
  var t1 = document.getElementById(firstTable);
  var t2 = document.getElementById(secondTable);
  
  if(t1.className=='hidden'){
    t1.className = visibleClass;
    t2.className = 'hidden'; 
  } else {
    t2.className = visibleClass;
    t1.className = 'hidden'; 
  }
}
</script>
<c:if test="${not empty countryCounts}">
<h5><spring:message code="geography.drilldown.mapped.countries" text="Countries providing data for Map"/></h5>
<c:if test="${fn:length(countryCounts)>4}">
<a href="javascript:toggleTables('sampleCountryTable', 'countryCount', 'results');" title="Show all countries"><spring:message code="show"/>/<spring:message code="hide"/></a>
</c:if>

<table id="sampleCountryTable" class="results" style="width: 720px;">
  <thead>
    <th><spring:message code="country"/></th>
    <th class="lastColumn"><spring:message code="log.console.count"/></th>
  </thead>  
  <tbody>
    <c:forEach items="${countryCounts}" var="countryCount" begin="0" end="3">
    <tr>
      <td style="width:650px;">
      	<c:set var="countryName"><gbif:capitalize>${countryCount.name}</gbif:capitalize></c:set>
        <img src="${pageContext.request.contextPath}/images/flags/<string:lowerCase>${countryCount.key}</string:lowerCase>.gif"/>&nbsp; <a href="${pageContext.request.contextPath}/countries/${countryCount.key}">${countryName}</a>
        <p class="resultsDetails">
        ${countryCount.properties[0]}
        </p>
      </td>
      <td class="lastColumn" style="width:70px;">
        <a href="${pageContext.request.contextPath}/occurrences/search.htm?<gbif:criterion subject="32" predicate="0" value="${countryCount.key}" index="0"/>&<gbif:criterion subject="${occurrenceSearchSubject}" predicate="0" value="${occurrenceSearchValue}" index="1"/>&<gbif:criterion subject="28" predicate="0" value="0" index="2"/>"><fmt:formatNumber value="${countryCount.count}" pattern="###,###"/></a>
      </td>
    </tr>
    </c:forEach>
    <c:if test="${fn:length(countryCounts)>4}">
    <tr>
      <td colspan="2">
        <p class="showFullTable">      
          <a href="javascript:toggleTables('sampleCountryTable', 'countryCount', 'results');">View ${fn:length(countryCounts)-4 } more countries... </a>
        </p>
      </td>
    </tr>    
    </c:if>
  </tbody>
</table>
<c:if test="${fn:length(countryCounts)>4}">
<display-el:table 
  name="countryCounts" 
  class="hidden" 
  id="fullTable" 
  uid="countryCount" 
  style="width: 720px;"
  requestURI="${pageContext.request.contextPath}/countries/${countryCount.key}/">
  <display-el:column titleKey="country" style="width:650px;">
      	<c:set var="countryName"><gbif:capitalize>${countryCount.name}</gbif:capitalize></c:set>
        <img src="${pageContext.request.contextPath}/images/flags/<string:lowerCase>${countryCount.key}</string:lowerCase>.gif"/>&nbsp; <a href="${pageContext.request.contextPath}/countries/${countryCount.key}">${countryName}</a>
     <p class="resultsDetails">
     ${countryCount.properties[0]}  
  </display-el:column>
  <display-el:column class="lastColumn" titleKey="log.console.count" style="width:70px;">
        <a href="${pageContext.request.contextPath}/occurrences/search.htm?<gbif:criterion subject="32" predicate="0" value="${countryCount.key}" index="0"/>&<gbif:criterion subject="${occurrenceSearchSubject}" predicate="0" value="${occurrenceSearchValue}" index="1"/>&<gbif:criterion subject="28" predicate="0" value="0" index="2"/>"><fmt:formatNumber value="${countryCount.count}" pattern="###,###"/></a>
  </display-el:column>
</display-el:table>
</c:if>    
</c:if>   