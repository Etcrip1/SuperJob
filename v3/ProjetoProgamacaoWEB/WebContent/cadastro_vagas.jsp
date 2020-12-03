<%@page import="util.Conexao"%>
<%@page import="java.util.List"%>
<%@page import="controller.VagaDAO"%>
<%@page import="model.Vaga"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Vagas</title>
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
	
	<table class="table">
            <tr>
                <th>ID</th>
                <th>Descrição</th>
                <th>Local</th>
                <th>Valor</th>
                <th>Beneficios</th>
                <th>Nome_empresa</th>
                <th>Contato</th>
            </tr>
            <%
                VagaDAO dao= new VagaDAO();
                List<Vaga> lista = dao.findAll();
                for(Vaga vaga : lista){
                    out.print("<tr><td>");
                    out.print(vaga.getId());
                    out.print("</td><td>");
                    out.print(vaga.getDescricao());
                    out.print("</td><td>");
                    out.print(vaga.getLocal());
                    out.print("</td><td>");
                    out.print(vaga.getValor());
                    out.print("</td><td>");
                    out.print(vaga.getBeneficio());
                    out.print("</td><td>");
                    out.print(vaga.getNomeEmpresa());
                    out.print("</td><td>");
                    out.print(vaga.getContatos());
                    out.print("</td><td><a href='javascript:abrirAlterarVaga()' ");
                    out.print("onclick='abrirAlterarVaga(" + vaga.getId() + ")");
                    out.print("'>Alterar</a>");
                    out.print("</td><td><a href='javascript:func()' ");
                    out.print("onclick='conf("+ vaga.getId()+")'>Excluir</a>");
                    out.print("</td></tr>");
                }
                
                Conexao.closeConnection();
            %>    
        </table>
	
	 <div class="modal2"></div>
    <div class="modal3"></div>
	<button type='button' class="btn btn-primary" onclick='abrirInserirVaga()' style="margin: 5px;">Inserir vaga</button>
    
   
  
	 


	
<!--bootstrap-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <!-- Modal alterar vaga -->
    <script type="text/javascript">
    function abrirAlterarVaga(id){
		$.ajax({		
        type: 'POST',
        url: 'modalAlterarVaga.jsp?id='+id,
        success: function(data){              
          $('.modal3').html(data);
          $('#alterarVaga').modal('show');
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
          $('.modal2').html(data);
          $('#inserirVaga').modal('show');
        }
      });
    }
    </script>

    <script>
        function conf(id){
            var resp=confirm('Deseja remover o id '+id+'?');
            if(resp){
                window.location.href=
                            "exec_excluir_vagas.jsp?id="+id;
                }
                       
            }
    </script>
</body>
</html>