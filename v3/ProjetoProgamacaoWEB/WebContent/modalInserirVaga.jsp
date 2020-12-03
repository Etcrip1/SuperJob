<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Inserir vagas -->
	<div class="modal fade" id="inserirVaga" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Cadastrar vaga</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      
	      
	       	<form action="exec_inserir_vagas.jsp" method="POST">
            <div style="margin: 0px 0px 0px 0px;">
            <input type="text" name="descricao" placeholder="Descrição" required="required"><span class="required">*</span>
          	</div>
            <div style="margin: 8px 0px 0px 0px;">
            <input type="text" name="local" placeholder="Local" required="required"><span class="required">*</span>
         	 </div>
            <div style="margin: 8px 0px 0px 0px;">
            <input type="number" name="valor" placeholder="Valor" required="required"><span class="required">*</span>
            </div>
            <div style="margin: 8px 0px 0px 0px;">
            <input type="text" name="beneficios" placeholder="Benefícios" required="required"><span class="required">*</span>
          	</div>
          	 <div style="margin: 8px 0px 0px 0px;">
            <input type="text" name="nome_empresa" placeholder="Empresa" required="required"><span class="required">*</span>
          	</div>
            <div style="margin: 8px 0px 0px 0px;">
            <input type="text" name="contato" placeholder="Contato" required="required"><span class="required">*</span>
          	</div>
            <div class="row">
            	<button type="submit" class="btn btn-primary" style="margin: 20px 0px 0px 15px;">Inserir</button>            	
            	<button type="button" class="btn btn-secondary" data-dismiss="modal" style="margin: 20px 0px 0px 5px;">Cancelar</button>	          	         
            </div>           
        </form>
      	 		</div>
	  		</div>
		</div>
	</div>
</body>
</html>