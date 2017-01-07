<!doctype html>

<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>ok</title>
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jstree/3.0.9/themes/default/style.min.css" />
  <script src="//cdnjs.cloudflare.com/ajax/libs/jstree/3.0.9/jstree.min.js"></script>
  
  
</head>
<body>
<% 

   // Get DataSource
   Context ctx = new InitialContext();
   DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/kicksatgs");
   // Get Connection and Statement
   Connection conn = ds.getConnection();
   Statement s = conn.createStatement();
   String query = "select * from belbinanswers";
   ResultSet rs = s.executeQuery(query);
%>

<p>

<div id="container">
  <ul>
    <li data-jstree='{ "selected" : true, "opened" : true }'>Root node
      <ul>
        <li>Child node 1</li>
        <li>Child node 2</li>
      </ul>
    </li>
  </ul>
</div>
<script>
$(function() {
  $('#container').jstree();
});
</script>

<p>

<%

Enumeration en = request.getParameterNames ();

%>
<table border=2">
  <tr>
   <th> param </th>
   <th> value </th>
  </tr>
<%

while(en.hasMoreElements())
        {
            Object objOri=en.nextElement();
            String param=(String)objOri;
            String value=request.getParameter(param);
            String role_qno[];
            String role;
            String qno;
            
            if (param.equals("Submit")) {
            } else
            if (param.equals("userhandle")) {
    %>
               <tr>
                  <td>userhandle</td>
                  <td><%= value %></td>
               </tr>
    <%        
            } else
            if (param.equals("language")) {
     %>
               <tr>
                  <td>language</td>
                  <td><%= value %></td>
               </tr>
    <%                   } else {// more robust to do a regex on role+qno
   
               role_qno = param.split ("_");
            
               role = role_qno[0];
               qno = role_qno[1];
    %>
               <tr>
                  <td><%= role %>: <%= qno %></td>
                  <td><%= value %></td>
               </tr>
    <%
            }
        }
   conn.close();
%>        

</table>
         

 
</body>
</html>
