<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.css">
 <style>



</head>
<body>
 <%
List<Usser> list=userDao.getAllRecords();
request.setAttribute("list",list);
%>
<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="home.html"><span style="color:#80BFFF"><b1>Examen</b1></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="consultarD.jsp"><B2>CONSULTAR DATOS</B2> <span class="sr-only">(current)</span></a></li>
        <li><a href="AgregarR.jsp"><b2>AGREGAR REGISTRO</b2></a></li>
          <li><a href="ModificarU.jsp"><b2>MODIFICAR REGISTRO</b2></a></li>
       
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          
        </div>
        
      </form>
  
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Apellidop</th>
        <th>Apellidom</th>
        <th>Email</th>
        <th>Fechaingreso</th>
        <th>Ingresomensual</th>
         <th>Edad</th>
        <th>Editar</th>
        
    </tr>
    </thead>
    <tbody>
    <tr id="tr-id-1" class="tr-class-1">
        <td id="td-id-1" class="td-class-1">
        <c:forEach items="${list }" var="u">

<tr><td>${u.getId()}</td>
<td>${u.getName()}</td>
<td>${u.getApellidop()}</td>
<td>${u.getApellidom()}</td>
<td>${u.getEmail()}</td>
<td>${u.getFechaingreso()}</td>
<td>${u.getIngresosmensuales()}</td>
<td>${u.getEdad()}</td>

<td><a href="editform.jsp?

id=${u.getId() }
&name=${u.getName() }
&apellidopaterno=${u.getApellidop() }
&apellidomaterno=${u.getApellidom() }
&email=${u.getEmail() }"
&ingresosmensuales=${u.getIngresosmensuales() }
&fechaingreso=${u.Fechaingreso() }
&edad=${u.getEdad() }


>Editar</a></td>

</c:forEach>
            
     
    </tr>
                            
    </tbody>
</table>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/locale/bootstrap-table-zh-ES.min.js"></script>

</body>
</html>