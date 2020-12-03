<%@page import="controller.VagaDAO"%>
<%@page import="model.Vaga"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                Vaga vaga = new Vaga();
                VagaDAO dao = new VagaDAO();
                if(request.getParameter("id").equals("")){
                    response.sendRedirect("cadastro_vagas.jsp");
                }else{
                    vaga.setId(Integer.parseInt(
                            request.getParameter("id")));
                    dao.delete(vaga.getId());
                    response.sendRedirect("cadastro_vagas.jsp");
                }
            }catch(Exception e){
                out.print("Erro ao deletar a vaga selecionada.");
            }
        %>
    </body>
</html>
