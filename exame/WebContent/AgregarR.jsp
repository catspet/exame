<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="com.infosyst.dao.userDao,com.infosyst.bin.*,java.util.* " %>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AgregarR</title>
</head>
<body>

   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.css">
</head>
<body>

<nav class="navbar navbar-default">
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
        <li class="active"><a href="consultad.jsp"><B2>CONSULTAR DATOS</B2> <span class="sr-only">(current)</span></a></li>
        <li><a href="AgregarR-jsp"><b2>AGREGAR REGISTRO</b2></a></li>
          <li><a href="Modificaru.jsp"><b2>MODIFICAR REGISTRO</b2></a></li>
       
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          
        </div>
        
      </form>
  
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
        
      </form>
  
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
<% 

String info =null;

 String name = request.getParameter("name"); 
 
 String apellidom = request.getParameter("apellidom"); 
 String apellidop =  request.getParameter("apellidop"); 
 String email =  request.getParameter("email");
 INT edad = Integer.parseInt(request.getParameter("edad"));
 String fechaingreso = request.getParameter("fechaingreso");
 int ingresosmensuales = Integer.parseInt(request.getParameter("ingresomensuales"));
 
 Usser datos = new Usser();
 datos.setName(name);
 datos.setApellidom(apellidom);
 datos.setApellidop(apellidop);
 datos.setEmail(email);
 datos.setEdad(edad);
 datos.setFechaingreso(fechaingreso);
 datos.setIngresosmensuales(ingresosmensuales);
 
 
 


int estado=userDao.save(datos); 

if(estado == 0)
{
	info = "los datos no pudieron ser agregados";
}

else
{
	info= "los datos se ingresaron correctamente";
	response.sendRedirect("viewusers.jsp");
}



%>

<h1><%= info %></h1>

<jsp:include page="home.html"></jsp:include>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/locale/bootstrap-table-zh-ES.min.js"></script>
</body>
</html>
</body>
</html>