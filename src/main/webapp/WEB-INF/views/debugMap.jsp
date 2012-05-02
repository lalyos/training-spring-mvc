<%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%>

<c:if test="true">
  <h3>${param.mapTitle}</h3>
  <table border="2">
    <tr>
      <td>key</td>
      <td>values</td>
    </tr>

<c:forEach items="${mapToDebug}" var="next" varStatus="status">
    <tr style="background:${ status.index % 2 == 0 ? '#aaa' : '#eee' }">
      <td>${next.key}</td>
      <td>${next.value}</td>
    </tr>
</c:forEach>
</table>
</c:if>
