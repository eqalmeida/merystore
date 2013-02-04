<%@page import="javax.jdo.Query"%>
<%@page import="org.edu.merystore.model.ClienteModel"%>
<%@page import="javax.jdo.PersistenceManager"%>
<%@page import="org.edu.merystore.utils.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Hello App Engine</title>
    <link type="text/css" rel="stylesheet" href="/bootstrap/css/bootstrap.min.css" />
  </head>

<body>
  
  <div class="container">
  
  
  <div class="row">
  
  <h2>My STORE</h2>
  
  <div class="navbar">
  <div class="navbar-inner">
    <a class="brand" href="#">Clientes</a>
    <ul class="nav">
      <li class="active"><a href="/clientes">Clientes</a></li>
      <li><a href="#">Link</a></li>
      <li><a href="#">Link</a></li>
    </ul>
  </div>
</div>
  </div>
  
  <div class="row">
  	<div class="span2"></div>
  	<div class="span10">

    <%
    
    PersistenceManager pm = PMF.get().getPersistenceManager();
    
    ClienteModel novo = new ClienteModel();
    novo.setNome("Cliente Teste");
    
    pm.makePersistent(novo);
    
    Query query = pm.newQuery("select from " + ClienteModel.class.getName());
    List<ClienteModel> lista  = (List<ClienteModel>) query.execute();
    for(ClienteModel cliente : lista) {
    %>
    
    <li><%= cliente.getNome() %></li>
  	
  	<% } %>
  	</div>
  </div>
  </div>
    
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>