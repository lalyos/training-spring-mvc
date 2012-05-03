<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

Minutes left to go lunch: ${minutes}



<c:set var="mapToDebug" scope="request"  value="${param}" />
<jsp:include page="debugMap.jsp" >
<jsp:param name="mapTitle" value="request parameters"/>
</jsp:include>

<c:set var="mapToDebug" scope="request"  value="${header}" />
<jsp:include page="debugMap.jsp" >
<jsp:param name="mapTitle" value="headers"/>
</jsp:include>

<c:set var="mapToDebug" scope="request"  value="${requestScope}" />
<jsp:include page="debugMap.jsp" >
<jsp:param name="mapTitle" value="request"/>
</jsp:include>

<c:set var="mapToDebug" scope="request"  value="${sessionScope}" />
<jsp:include page="debugMap.jsp" >
<jsp:param name="mapTitle" value="sessionScope"/>
</jsp:include>

<c:set var="mapToDebug" scope="request"  value="${applicationScope}" />
<jsp:include page="debugMap.jsp" >
<jsp:param name="mapTitle" value="application"/>
</jsp:include>

</body>
</html>