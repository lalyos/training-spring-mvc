<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ tag body-content="empty"  language="java" pageEncoding="UTF-8"%>
<%@ attribute name="name" required="true"  %>

<div class="control-group">
  <label class="control-label" for="${name}"><spring:message code="field.label.${name}"/></label>
  <form:input path="${name}" cssClass="input-xlarge"/>
  
  <p class="help-block">
    <form:errors path="${name}" cssClass="error"  />
  </p>
  
</div>