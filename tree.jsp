<!doctype html>

<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>jquery tree test</title>
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jstree/3.0.9/themes/default/style.min.css" />
  <script src="//cdnjs.cloudflare.com/ajax/libs/jstree/3.0.9/jstree.min.js"></script>

</head>
<body>

<p>

<div id="container">
  <ul>
    <li data-jstree='{ "selected" : true, "opened" : true }'>Root node
      <ul>
        <li>Child node 1</li>
        <li>Child node 2</li>
        <li>Child node 3</li>
      </ul>
    </li>
  </ul>
</div>
<script>
$(function() {
  $('#container').jstree();
});
</script>         

</body>
</html>
