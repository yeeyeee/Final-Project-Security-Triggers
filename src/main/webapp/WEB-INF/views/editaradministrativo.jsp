<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <title>Editar Administrativo</title>
    
</head>
<body>
    <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
       <%@include file="menu.jsp"%>
        <h1>Editar Administrativo</h1>
    </header>
    <main>
    
    <div class="container"> 
        <form action= "${pageContext.request.contextPath}/editar/Administrativo" method="POST">
    		<div class="mb-3">
                <label for="nombreUsuario" class="form-label">Nombres</label>
                <input type="text" class="form-control" id="nombreUsuario" name="nombre" readonly="readonly" value="${usuario.getNombre()}" required>
            </div>  
            <div class="mb-3">
                <label for="run" class="form-label">Run</label>
                <input type="number" class="form-control" id="run" name="run" readonly="readonly" value="${usuario.getRun()}" required>
            </div>
            <div class="mb-3">
                <label for="fechaNacimiento" class="form-label">Fecha de Nacimiento</label>
                <input type="text" class="form-control" id="fechaNacimiento" name="fechaNacimiento" readonly="readonly" value="${usuario.getFechaNacimiento()}" required>
            </div>
            <div class="mb-3">
                <label for="tipoUsuario" class="form-label">Tipo de Usuario</label>
                <input type="text" class="form-control" id="tipoUsuario" name="tipoUsuario" readonly="readonly" value="${usuario.getTipoUsuario()}" required>
            </div>  
    	 
    	
            <div class="mb-3">
	                <label for="area" class="form-label">Area de trabajo</label>
	                <input type="text" name="area" class="form-control" id="area" value="${adm.getArea()}">
	            </div>
	            <div class="mb-3">
	                <label for="expPrevia" class="form-label">Experiencia Previa</label>
	                <input type="text" name="expPrevia" class="form-control" id="expPrevia" value="${adm.getExperienciaPrevia()}">
	            </div>
	            
	            
           
            <div class="mb-3">
                <input type="reset" value="Limpiar" style="color:rgb(139, 136, 136)e;text-decoration-line: underline;background: none; border: none;">             
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>            
          </form> 
   	</div>
    </main>
    <%@include file="pie.jsp"%>
  </body>
</html>