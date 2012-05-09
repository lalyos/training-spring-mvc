<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page pageEncoding="UTF-8" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
      table form, table input {
        margin: 0;
      }
      
    </style>
    <link href="/resources/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="/resources/bootstrap/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/bootstrap/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/bootstrap/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/bootstrap/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/resources/bootstrap/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>
        <tiles:insertAttribute name="header" ignore="true" />
        <tiles:insertAttribute name="menu" ignore="true" />

  <div class="container">
    <div class="row">
      <div class="span10">
        <tiles:insertAttribute name="body" />
      </div>
    </div>

    <div class="row">
      <tiles:insertAttribute name="footer" ignore="true" />
    </div>
  </div>

  <script src="/resources/bootstrap/js/jquery.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-transition.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-alert.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-modal.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-dropdown.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-scrollspy.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-tab.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-tooltip.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-popover.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-button.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-collapse.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-carousel.js"></script>
    <script src="/resources/bootstrap/js/bootstrap-typeahead.js"></script>

  </body>
</html>