<%@ tag language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="top" description="" required="true"  %>
<%@ attribute name="bottom" description="" required="true"  %>
<%@ variable name-given="next" scope="NESTED" %>


<c:forEach begin="${bottom}" end="${top}" var="i">
<c:set var="next" value="${top-i+1}" />

<jsp:doBody />
</c:forEach>