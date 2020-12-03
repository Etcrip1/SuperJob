<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="controller.CurriculoDAO"%>
<%@page import="model.Curriculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            try{
                Curriculo curriculo = new Curriculo();
                CurriculoDAO dao = new CurriculoDAO();
                request.setCharacterEncoding("UTF-8");
                if(request.getParameter("id").equals("")){
                    response.sendRedirect("cadastro_curriculos.jsp");
                }else{                	
                    curriculo.setId(Integer.parseInt(
                            request.getParameter("id")));
                    curriculo.setNome(request.getParameter("nome"));
                    curriculo.setDataNascimento(sdf.parse(request.getParameter("datanasc")));
                    curriculo.setEndereco(request.getParameter("endereco"));
                    curriculo.setEmail(request.getParameter("email"));
                    curriculo.setTelefone(request.getParameter("telefone"));
                    curriculo.setLinguagens(request.getParameter("linguagens"));
                    curriculo.setDiferenciais(request.getParameter("diferenciais"));
                    curriculo.setGit(request.getParameter("git"));
                    curriculo.setExperiencias(request.getParameter("experiencias"));
                    dao.update(curriculo);
                    response.sendRedirect("cadastro_curriculos.jsp");
                }
            }catch(Exception e){
              e.printStackTrace();
            }
        %>
    </body>
</html>