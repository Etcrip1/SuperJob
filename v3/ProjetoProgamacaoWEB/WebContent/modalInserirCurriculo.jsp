<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div class="modal fade" id="inserirCurriculo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Cadastrar vaga</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body"> 
	      
	       	<form action="exec_inserir_curriculos.jsp" method="POST">
             <div style="margin: 8px 0px 0px 0px;">
            <input type="text" name="nome" placeholder="Nome" required="required"><span class="required">*</span>
          	</div>
            <div style="margin: 8px 0px 0px 0px;">
            <label>Data de nascimento</label><br>
            <input type="date" name="datanasc" placeholder="Data de nascimento" required="required"><span class="required">*</span>
          	</div>
          	 <div style="margin: 8px 0px 0px 0px;">
            <input id="cep" type="text" name="cep" placeholder="CEP" required="required"><span class="required">*</span>
          	</div>
            <div style="margin: 8px 0px 0px 0px;">
            <input id="endereco" type="text" name="endereco" placeholder="Endereço" required="required"><span class="required">*</span>
          	</div>
            <div style="margin: 8px 0px 0px 0px;">
            <input id="email" type="text" name="email" placeholder="Email" required="required"><span class="required">*</span>
          	</div>
            <div style="margin: 8px 0px 0px 0px;">
            <input type="text" name="telefone" placeholder="Telefone" required="required"><span class="required">*</span>
          	</div>
            <div style="margin: 8px 0px 0px 0px;">
            <input type="text" name="linguagens" placeholder="Linguagens de programação" required="required"><span class="required">*</span>
          	</div>
            <div style="margin: 8px 0px 0px 0px;">
            <input type="text" name="diferenciais" placeholder="Diferenciais" required="required"><span class="required">*</span>
          	</div>
            <div style="margin: 8px 0px 0px 0px;">
            <input type="text" name="git" placeholder="Github" required="required"><span class="required">*</span>
          	</div>
            <div style="margin: 8px 0px 0px 0px;">
            <input type="text" name="experiencias" placeholder="Experiências" required="required"><span class="required">*</span>
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

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript">
		$("#cep").focusout(function(){
			$.ajax({
				url: 'https://viacep.com.br/ws/'+$(this).val()+'/json/unicode/',
				dataType: 'json',
				success: function(resposta){
					$("#endereco").val(resposta.logradouro);
					$("#email").focus();
				}
			});
		});
</script>
</body>
</html>