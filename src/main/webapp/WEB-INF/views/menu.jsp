<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/login" var="loginUrl" />
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Project name</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="#">${not empty sessionScope.username ? sessionScope.username : 'Anonym'}</a></li>
              <li><a href="${loginUrl}">Login</a></li>
            </ul>
          </div><!--/.nav-collapse -->
          
          
        </div>
      </div>
    </div>
