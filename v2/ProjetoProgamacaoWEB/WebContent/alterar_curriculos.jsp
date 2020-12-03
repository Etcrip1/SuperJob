<%@page import="model.Curriculo"%>
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
        <form action="exec_alterar_curriculos.jsp" method="POST">
            <label>ID:</label><br>
            <input type="text" name="id" readonly=“true”
            value="<%=request.getParameter("id")%>"><br>
            <label>Nome:</label><br>
            <input type="text" name="nome"
            value="<%=request.getParameter("nome")%>"><br>            
            <label>Data nascimento:</label><br>
            <input type="Date" name="datanasc"
            value="<%=request.getParameter("datanasc")%>"><br>            
            <label>Endereço:</label><br>
            <input type="text" name="endereco"
            value="<%=request.getParameter("endereco")%>"><br>
            <label>Email:</label><br>
            <input type="text" name="email"
            value="<%=request.getParameter("email")%>"><br>
            <label>Telefone:</label><br>
            <input type="text" name="telefone"
            value="<%=request.getParameter("telefone")%>"><br>                       
            <label>Linguagens:</label><br>
            <input type="text" name="linguagens"
            value="<%=request.getParameter("linguagens")%>"><br>
            <label>Diferenciais:</label><br>
            <input type="text" name="diferenciais"
            value="<%=request.getParameter("diferenciais")%>"><br>
            <label>Git:</label><br>
            <input type="text" name="git"
            value="<%=request.getParameter("git")%>"><br>                       
            <label>Experiencias:</label><br>
            <input type="text" name="experiencias"
            value="<%=request.getParameter("experiencias")%>"><br>
            <button type="submit">Alterar</button>
        </form>
        <a href="cadastro_curriculos.jsp"><button>Cancelar</button></a>
    </body>
</html>