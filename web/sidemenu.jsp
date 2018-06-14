<%

    String user;
    try {
        user = (String) session.getAttribute("usuario");
        if (user.equals("")) {
            response.sendRedirect("login.jsp");
        }
    } catch (NullPointerException e) {
        response.sendRedirect("login.jsp");
        user = "";
    }
%>


<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0 #CE5454;">
            <a href="produto.jsp" class="site_title"><i class="fa fa-desktop"></i> <span>InfoLoja</span></a>
        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
                <%if (user.equals("")) {
                %> 
                <img src="images/user.jpg" alt="..." class="img-circle profile_img">
                <% }%>
            </div>
            <div class="profile_info">
                <span>Bem vindo</span>
                <h2><%
                    out.print(session.getAttribute("usuario"));
                    %></h2>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- /menu profile quick info -->

        <br />

        <!-- sidebar menu -->

       
                <h3>Menu</h3>
                
                        <ul class="">
                            <li><a href="cadastro_produto.jsp">Cadastro de Produtos</a></li>
                            <li><a href="clientes.jsp">Cadastro de Clientes</a></li>
                            <li><a href="cliente_lista.jsp">Lista de Clientes</a></li>
                            <li><a href="produto.jsp">Lista de Produtos</a></li>
                        </ul>

                </ul>
                </li>



          

    </div>
</div>