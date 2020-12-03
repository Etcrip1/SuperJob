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
                request.setCharacterEncoding("UTF-8");
                if(request.getParameter("descricao").equals("")){
                    response.sendRedirect("cadastro_vagas.jsp");
                }else{
                	vaga.setId(1);
                    vaga.setDescricao(request.getParameter("descricao"));
                    vaga.setLocal(request.getParameter("local"));
                    vaga.setValor(Double.parseDouble(
                            request.getParameter("valor")));
                    vaga.setBeneficio(request.getParameter("beneficios"));
                    vaga.setNomeEmpresa(request.getParameter("nome_empresa"));
                    vaga.setContatos(request.getParameter("contato"));
                   	dao.persist(vaga);
                    response.sendRedirect("cadastro_vagas.jsp");
                }
            }catch(Exception e){
               e.printStackTrace();
            }
        %>
    </body>
</html>