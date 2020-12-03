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
            try{
            	Curriculo curriculo = new Curriculo();
            	CurriculoDAO dao = new CurriculoDAO();
            	
                if(request.getParameter("id").equals("")){
                    response.sendRedirect("cadastro_curriculos.jsp");
                }else{
                    curriculo.setId(Integer.parseInt(
                            request.getParameter("id")));
                    dao.delete(curriculo.getId());
                    response.sendRedirect("cadastro_curriculos.jsp");
                }
            }catch(Exception e){
                e.getStackTrace();
            }
        %>
    </body>
</html>
