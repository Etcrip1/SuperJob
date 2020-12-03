<%@page import="util.Conexao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Curriculo"%>
<%@page import="controller.CurriculoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Cadastro de Curriculos</title>
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
                <th>Nome</th>
                <th>Data Nascimento</th>
                <th>Endereço</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Linguagens</th>
                <th>Diferenciais</th>
                <th>Git</th>
                <th>Experiencias</th>
            </tr>
            <%   		
            CurriculoDAO dao = new CurriculoDAO();
            ArrayList<Curriculo> lista = dao.findAll();
                	for(Curriculo curriculo : lista){
                		 out.print("<tr><td>");
                         out.print(curriculo.getId());
                         out.print("</td><td>");
                         out.print(curriculo.getNome());
                         out.print("</td><td>");
                         out.print(curriculo.getDataNascimento());
                         out.print("</td><td>");
                         out.print(curriculo.getEndereco());
                         out.print("</td><td>");
                         out.print(curriculo.getEmail());
                         out.print("</td><td>");
                         out.print(curriculo.getTelefone());
                         out.print("</td><td>");
                         out.print(curriculo.getLinguagens());
                         out.print("</td><td>");
                         out.print(curriculo.getDiferenciais());
                         out.print("</td><td>");
                         out.print(curriculo.getGit());
                         out.print("</td><td>");
                         out.print(curriculo.getExperiencias());
                         out.print("</td><td><a href='javascript:abrirAlterarCurriculo()' ");
                         out.print("onclick='abrirAlterarCurriculo(" + curriculo.getId() + ")");
                         out.print("'>Alterar</a>");
                         out.print("</td><td><a href='javascript:func()' ");
                         out.print("onclick='conf("+curriculo.getId()
                                     +")'>Excluir</a>");
                         out.print("</td></tr>");
                    }
                	Conexao.closeConnection();
            %>    
        </table>
        
        	<button type='button' class="btn btn-primary" onclick='abrirInserirCurriculo()' style="margin: 5px;">Inserir curriculo</button>
    
    <div class="modal2"></div>
    <div class="modal3"></div>
  
</div>   
<!--bootstrap-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
       	<script>
            function conf(id){
                var resp=confirm('Deseja remover o id '+id+'?');
                if(resp){
                    window.location.href=
                            "exec_excluir_curriculos.jsp?id="+id;
                }
                       
            }
        </script>
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
    
    <!-- Modal alterar curriculo -->
    <script type="text/javascript">
    function abrirAlterarCurriculo(id){
		$.ajax({		
        type: 'POST',
        url: 'modalAlterarCurriculo.jsp?id='+id,
        success: function(data){              
          $('.modal3').html(data);
          $('#alterarCurriculo').modal('show');
        }
      });
    }
    </script>
</body>
</html>