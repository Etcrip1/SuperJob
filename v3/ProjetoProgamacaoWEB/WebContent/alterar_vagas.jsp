
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Curriculos</title>
    </head>
    <body>
        <form action="exec_alterar_vagas.jsp" method="POST">
            <label>ID:</label><br>
            <input type="text" name="id" readonly="true"
            value="<%=request.getParameter("id")%>"><br>
            <label>Descrição:</label><br>
            <input type="text" name="descricao"
            value="<%=request.getParameter("descricao")%>"><br>
            <label>Local:</label><br>
            <input type="text" name="local"
            value="<%=request.getParameter("local")%>"><br>            
            <label>Valor:</label><br>
            <input type="number" name="valor"
            value="<%=request.getParameter("valor")%>"><br>
            <label>Beneficios:</label><br>
            <input type="text" name="beneficios"
            value="<%=request.getParameter("beneficios")%>"><br>
            <label>Nome Empresa:</label><br>
            <input type="text" name="nome_empresa"
            value="<%=request.getParameter("nome_empresa")%>"><br>                       
            <label>Contato:</label><br>
            <input type="text" name="contato"
            value="<%=request.getParameter("contato")%>"><br>
            <button type="submit">Alterar</button>
        </form>
        <a href="cadastro_vagas.jsp"><button>Cancelar</button></a>
    </body>
</html>