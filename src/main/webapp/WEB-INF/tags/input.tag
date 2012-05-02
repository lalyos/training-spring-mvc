<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ tag body-content="empty"  language="java" pageEncoding="UTF-8"%>
<%@ attribute name="name" required="true"  %>


  <br/>${name}: <input type="text" name="${name}" value="${param[name]}" />
  <c:if test="${not empty errors[name]}">
  <span class="error"> ${errors[name]} </span>
  </c:if>
