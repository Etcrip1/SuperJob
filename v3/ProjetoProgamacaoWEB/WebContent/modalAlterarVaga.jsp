<%@page import="java.sql.SQLException"%>
<%@page import="util.Conexao"%>
<%@page import="model.Vaga"%>
<%@page import="controller.VagaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%		
		Vaga vaga = new Vaga(); 
		try {
			if(!request.getParameter("id").equals("")){
				VagaDAO dao = new VagaDAO();
				int id = Integer.parseInt(request.getParameter("id"));
				vaga = dao.findById(id);
			}else {
				response.sendRedirect("cadastro_vagas.jsp");
			}			
		} catch(SQLException e){
			response.sendRedirect("cadastro_vagas.jsp");
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="modal fade" id="alterarVaga" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Cadastrar vaga</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body"> 	      
	       	<form action="exec_alterar_vagas.jsp" method="POST">
             <label>ID:</label><br>
            <input type="text" name="id" readonly="true"
            value="<%=vaga.getId()%>"><br>
            <label>Descrição:</label><br>
            <input type="text" name="descricao"
            value="<%=vaga.getDescricao()%>"><br>
            <label>Local:</label><br>
            <input type="text" name="local"
            value="<%=vaga.getLocal()%>"><br>            
            <label>Valor:</label><br>
            <input type="number" name="valor"
            value="<%=vaga.getValor()%>"><br>
            <label>Beneficios:</label><br>
            <input type="text" name="beneficios"
            value="<%=vaga.getBeneficio()%>"><br>
            <label>Nome Empresa:</label><br>
            <input type="text" name="nome_empresa"
            value="<%=vaga.getNomeEmpresa()%>"><br>                       
            <label>Contato:</label><br>
            <input type="text" name="contato"
            value="<%=vaga.getContatos()%>"><br>
            <div class="row">
            	<button type="submit" class="btn btn-primary" style="margin: 20px 0px 0px 15px;">Confirmar</button>            	
            	<button type="button" class="btn btn-secondary" data-dismiss="modal" style="margin: 20px 0px 0px 5px;">Cancelar</button>	          	         
            </div>           
        </form>
      	 		</div>
	  		</div>
		</div>
	</div>
	<%Conexao.closeConnection(); %>
</body>
</html>