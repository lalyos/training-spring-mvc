<h1>Delivery Address</h1>

<c:if test="${not empty deliveryAddress.street}">

<p>Your current delivery Address is:
[${deliveryAddress.zip}] ${deliveryAddress.city} ${deliveryAddress.street}
in : ${deliveryAddress.country}
</p>
</c:if>

<c:if test="${empty deliveryAddress.street}">

<p>Your don't have a delivery address set yet! 
</p>
</c:if>
