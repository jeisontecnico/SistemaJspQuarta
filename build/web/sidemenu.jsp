<%
    session.setAttribute("usuario", "");
    String user = (String) session.getAttribute("usuario");
    try {
        if (user.equals("")) {
            session.setAttribute("usuario", "Usuario");
// response.sendRedirect("login.jsp");
        }
    } catch (NullPointerException e) {
        //response.sendRedirect("login.jsp");
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
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <ul class="nav side-menu">
                    <li><a><i class="fa fa-bars"></i>Categorias de produtos<span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="placavideo.jsp">Placas de Video</a></li>
                            <li><a href="processadores.jsp">Processadores</a></li>
                        </ul>
                    </li>

                    <%--<li><a><i class="fa fa-edit"></i> Cadastro <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="perfil.jsp">Cliente</a></li>
                            <li><a href="produto.jsp">Produtos</a></li>
                            <li><a href="carrinho.jsp">Carrinho</a></li>
                                                
                        </ul>
                        <li><a href="./Sair"><i class="fa fa-power-off"></i>SAIR</a></li>
                    </li>
                    --%>
            </div>

        </div>
        <!-- /sidebar menu -->

        <!-- /menu footer buttons -->
        <%-- <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
        </div>--%>
        <!-- /menu footer buttons -->
    </div>
</div>