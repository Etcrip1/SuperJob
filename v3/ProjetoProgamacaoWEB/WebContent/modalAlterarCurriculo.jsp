<%@page import="java.sql.SQLException"%>
<%@page import="controller.CurriculoDAO"%>
<%@page import="model.Curriculo"%>
<%@page import="util.Conexao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%		
		Curriculo curriculo = null; 
		try {
			if(!request.getParameter("id").equals("")){
				CurriculoDAO dao = new CurriculoDAO();
				int id = Integer.parseInt(request.getParameter("id"));
				curriculo =  dao.findById(id);
			}else {
				response.sendRedirect("cadastro_curriculo.jsp");
			}			
		} catch(SQLException e){
			response.sendRedirect("cadastro_curriculo.jsp");
		}
		
		if(curriculo == null){
			System.out.println("asd");
		}
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="modal fade" id="alterarCurriculo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Cadastrar curriculo</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body"> 	      
	        <form action="exec_alterar_curriculos.jsp" method="POST">
             <label>ID:</label><br>
            <input type="text" name="id" readonly="true"
            value="<%=curriculo.getId()%>"><br>
            <label>Nome:</label><br>
            <input type="text" name="nome"
            value="<%=curriculo.getNome()%>"><br>            
            <label>Data nascimento:</label><br>
            <input type="Date" name="datanasc"
            value="<%=curriculo.getDataNascimento()%>"><br>            
            <label>Endereço:</label><br>
            <input type="text" name="endereco"
            value="<%=curriculo.getEndereco()%>"><br>
            <label>Email:</label><br>
            <input type="text" name="email"
            value="<%=curriculo.getEmail()%>"><br>
            <label>Telefone:</label><br>
            <input type="text" name="telefone"
            value="<%=curriculo.getTelefone()%>"><br>                       
            <label>Linguagens:</label><br>
            <input type="text" name="linguagens"
            value="<%=curriculo.getLinguagens()%>"><br>
            <label>Diferenciais:</label><br>
            <input type="text" name="diferenciais"
            value="<%=curriculo.getDiferenciais()%>"><br>
            <label>Git:</label><br>
            <input type="text" name="git"
            value="<%=curriculo.getGit()%>"><br>                       
            <label>Experiencias:</label><br>
            <input type="text" name="experiencias"
            value="<%=curriculo.getExperiencias()%>"><br>
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