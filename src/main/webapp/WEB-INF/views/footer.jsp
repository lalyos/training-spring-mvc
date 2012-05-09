<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/login" var="loginUrl" />
          <form class="well form-inline" action="${loginUrl}">
  <input type="text" name="username" class="input-small" placeholder="Username">
  <input type="password" name="password" class="input-small" placeholder="Password">
  <label class="checkbox">
    <input type="checkbox"> Remember me
  </label>
  <button type="submit" class="btn">Sign in</button>
</form>
