<%@page import="java.util.List"%>
<%@page import="controller.VagaDAO"%>
<%@page import="model.Vaga"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Vagas</title>
    </head>
    <body>
        <script>
            function conf(id){
                var resp=confirm('Deseja remover o id '+id+'?');
                if(resp){
                    window.location.href=
                            "exec_excluir_vagas.jsp?id="+id;
                }
                       
            }
        </script>
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
                for(int i=0;i<lista.size();i++){
                    out.print("<tr><td>");
                    out.print(lista.get(i).getId());
                    out.print("</td><td>");
                    out.print(lista.get(i).getDescricao());
                    out.print("</td><td>");
                    out.print(lista.get(i).getLocal());
                    out.print("</td><td>");
                    out.print(lista.get(i).getValor());
                    out.print("</td><td>");
                    out.print(lista.get(i).getBeneficio());
                    out.print("</td><td>");
                    out.print(lista.get(i).getNomeEmpresa());
                    out.print("</td><td>");
                    out.print(lista.get(i).getContatos());
                    out.print("</td><td><a href='alterar_vagas.jsp?");
                    out.print("id="+lista.get(i).getId());
                    out.print("&descricao="+lista.get(i).getDescricao());
                    out.print("&local="+lista.get(i).getLocal());
                    out.print("&valor="+lista.get(i).getValor());
                    out.print("&beneficios="+lista.get(i).getBeneficio());
                    out.print("&nome_empresa="+lista.get(i).getNomeEmpresa());
                    out.print("&contato="+lista.get(i).getContatos());
                    out.print("'>Alterar</a>");
                    out.print("</td><td><a href='javascript:func()' ");
                    out.print("onclick='conf("+lista.get(i).getId()
                                +")'>Excluir</a>");
                    out.print("</td></tr>");
                }
            %>    
        </table>
        <a href="inserir_vagas.jsp"><button class="btn btn-success">Inserir</button></a>
    </body>
</html>