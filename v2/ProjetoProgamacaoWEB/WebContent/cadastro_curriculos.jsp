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
        <script>
            function conf(id){
                var resp=confirm('Deseja remover o id '+id+'?');
                if(resp){
                    window.location.href=
                            "exec_excluir_curriculos.jsp?id="+id;
                }
                       
            }
        </script>
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
                         out.print("</td><td><a href='alterar_curriculos.jsp?");
                         out.print("id="+curriculo.getId());
                         out.print("&nome="+curriculo.getNome());
                         out.print("&datanasc="+curriculo.getDataNascimento());
                         out.print("&endereco="+curriculo.getEndereco());
                         out.print("&email="+curriculo.getEmail());
                         out.print("&telefone="+curriculo.getTelefone());
                         out.print("&linguagens="+curriculo.getLinguagens());
                         out.print("&diferenciais="+curriculo.getDiferenciais());
                         out.print("&git="+curriculo.getGit());
                         out.print("&experiencias="+curriculo.getExperiencias());
                         out.print("'>Alterar</a>");
                         out.print("</td><td><a href='javascript:func()' ");
                         out.print("onclick='conf("+curriculo.getId()
                                     +")'>Excluir</a>");
                         out.print("</td></tr>");
                    }
                	Conexao.closeConnection();
            %>    
        </table>
        <a href="inserir_curriculos.jsp"><button class="btn btn-success">Inserir</button></a>
        
        <!--bootstrap-->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>