<%@taglib tagdir="/WEB-INF/tags" prefix="l" %>

<c:url var="formUrl" value="/address/set"></c:url>

<form:form modelAttribute="address" action="${formUrl}" method="post">
  <form:errors cssClass="error"  />
  <l:input name="street"/>
  <l:input name="city"/>
  <l:input name="zip"/>
  <l:input name="country"/>
  <br/><form:button value="add">Set</form:button>
</form:form>


  <c:set var="mapToDebug" scope="request"  value="${requestScope}" />
<jsp:include page="/WEB-INF/views/debugMap.jsp" >
<jsp:param name="mapTitle" value="request"/>
</jsp:include>
  
  

<c:set var="mapToDebug" scope="request"  value="${sessionScope}" />
<jsp:include page="/WEB-INF/views/debugMap.jsp" >
<jsp:param name="mapTitle" value="sessionScope"/>
</jsp:include>

