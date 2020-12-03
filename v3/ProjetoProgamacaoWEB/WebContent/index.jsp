<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>SuperJOB</title>
</head>
<body>

<div class="container">
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	  <a class="navbar-brand" href="index.jsp">Inicio</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="cadastro_vagas.jsp">Vagas</a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="cadastro_curriculos.jsp">Currículos</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	
	<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/curriculo.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/vaga.jpg" alt="Second slide">
    </div>
  </div>
</div>
	
	
	<button type='button' class="btn btn-primary" onclick='abrirInserirCurriculo()' style="margin: 5px;">Inserir curriculo</button>
	<button type='button' class="btn btn-primary" onclick='abrirInserirVaga()' style="margin: 5px;">Inserir vaga</button>
    
    <div class="modal2"></div>
    <div class="modal3"></div>

</div>


	
<!--bootstrap-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   
    <!-- Modal inserir curriculo -->
    <script type="text/javascript">
    function abrirInserirCurriculo(){
      $.ajax({
        type: 'POST',
        url: 'modalInserirCurriculo.jsp',
        success: function(data){              
          $('.modal2').html(data);
          $('#inserirCurriculo').modal('show');
        }
      });
    }
    </script>
    
    <!-- Modal inserir vaga -->
    <script type="text/javascript">
    function abrirInserirVaga(){
      $.ajax({
        type: 'POST',
        url: 'modalInserirVaga.jsp',
        success: function(data){              
          $('.modal3').html(data);
          $('#inserirVaga').modal('show');
        }
      });
    }
    </script>
</body>
</html>