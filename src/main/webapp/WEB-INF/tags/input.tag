<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ tag body-content="empty"  language="java" pageEncoding="UTF-8"%>
<%@ attribute name="name" required="true"  %>

  <br/>${name}: <form:input path="${name}"/>
  <form:errors path="${name}" cssClass="error" />