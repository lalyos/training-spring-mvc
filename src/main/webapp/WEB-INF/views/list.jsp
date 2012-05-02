<%@taglib tagdir="/WEB-INF/tags" prefix="l" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h1>list of foods</h1>
<table border="1">
  <tr>
    <td>name</td>
    <td>price</td>
    <td>calories</td>
    <td></td>
  </tr>
  <c:forEach items="${foods}" var="nextFood">
  <c:url var="deleteUrl" value="delete/${nextFood.name}" />
  
    <tr>
      <td>${nextFood.name}</td>
      <td>${nextFood.price}</td>
      <td>${nextFood.calories}</td>
      <td>        
        <form action="${deleteUrl}" method="POST"> 
            <input type="submit" value="X"> 
            <input name="_method" value="DELETE" type="hidden">
        </form>
      </td>
    </tr>
  </c:forEach>
</table>  
  
  <div>
  <c:url var="formUrl" value="add"></c:url>


<form:form modelAttribute="food" action="${formUrl}" method="post">
  <l:input name="name"/>
  <l:input name="price"/>
  <l:input name="calories"/>
  <br/><form:button value="add">Add</form:button>
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
  