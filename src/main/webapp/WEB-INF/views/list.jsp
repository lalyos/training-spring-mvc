<%@taglib tagdir="/WEB-INF/tags" prefix="l" %>

<h1><spring:message code="title.lunch.list"/></h1>
<c:if test="${not empty flash }" >
<div class="flash">${flash}</div>
</c:if>

<table class="table table-striped table-condensed">
  <thead>
  <tr>
    <th><spring:message code="field.label.name"/></th>
    <th><spring:message code="field.label.price"/></th>
    <th><spring:message code="field.label.calories"/></th>
    <th></th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${foods}" var="nextFood">
  <c:url var="deleteUrl" value="delete/${nextFood.name}" />
    
    <tr>
      <td>${nextFood.name}</td>
      <td>${nextFood.price}</td>
      <td>${nextFood.calories}</td>
      <td>        
        <form action="${deleteUrl}" method="POST"> 
            <button type="submit" class="btn btn-danger">
            <i class="icon-trash icon-white"></i>
            Delete</button>
            <input name="_method" value="DELETE" type="hidden">
        </form>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>  
  
  <div>
  <c:url var="formUrl" value="add"></c:url>


<form:form modelAttribute="food" action="${formUrl}" method="post" cssClass="form-horizontal">
<fieldset>
  <form:errors cssClass="error"  />
  <l:input name="name"/>
  <l:input name="price"/>
  <l:input name="calories"/>
  
  <div class="form-action">
    <button type="submit" class="btn btn-primary"><fmt:message key="label.form.add" /></button>
  </div>
  </fieldset>
</form:form>



</div>


  <c:set var="mapToDebug" scope="request"  value="${param}" />
<jsp:include page="/WEB-INF/views/debugMap.jsp" >
<jsp:param name="mapTitle" value="params"/>
</jsp:include>

  <c:set var="mapToDebug" scope="request"  value="${requestScope}" />
<jsp:include page="/WEB-INF/views/debugMap.jsp" >
<jsp:param name="mapTitle" value="request"/>
</jsp:include>
  
  

<c:set var="mapToDebug" scope="request"  value="${sessionScope}" />
<jsp:include page="/WEB-INF/views/debugMap.jsp" >
<jsp:param name="mapTitle" value="sessionScope"/>
</jsp:include>

<c:set var="mapToDebug" scope="request"  value="${applicationScope}" />
<jsp:include page="/WEB-INF/views/debugMap.jsp" >
<jsp:param name="mapTitle" value="application"/>
</jsp:include>
  