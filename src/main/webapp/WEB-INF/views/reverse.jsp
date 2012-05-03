<%@taglib tagdir="/WEB-INF/tags" prefix="epam" %>
<h1>Reverse</h1>

<epam:twice >
<jsp:attribute name="split">
<h1><span style="background:green">---</span></h1>
</jsp:attribute>
<jsp:body>
<h1>menjunk haza! nem mondom ketszer!</h1>
</jsp:body>
</epam:twice>
<epam:reverse bottom="1" top="5">

<hr/> ${next}
</epam:reverse>
