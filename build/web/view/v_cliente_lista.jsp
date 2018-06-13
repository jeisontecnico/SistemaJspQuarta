<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Lista de Clientes</h3>
            </div>

            <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Clientes</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Configura��o 1</a>
                                    </li>
                                    <li><a href="#">Configura��o 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br>

                        <!-- DATATABLES -->
                         
                        
                        
                        
                        <table id="mytable" class="display" style="width:100%">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Sobrenome</th>
                                    <th>Data de Nascimento</th>
                                    <th>Apelido</th>
                                </tr>
                            </thead>
                            <jsp:useBean id="clientes" class="beans.ClienteLista" type="beans.ClienteLista" scope="page"/>
                            <jsp:useBean id="cliente" class="model.bean.ClienteBean" type="model.bean.ClienteBean" scope="page"/>
                        <tbody>
                            <br/><%
                                
                                for(int i=0;i < clientes.getClientes().size();i++) {
                                    cliente = clientes.getClientes().get(i);
                            %>
                            <tr>
                                <td><%=cliente.getNome() %></td>
                                <td><%=cliente.getSobrenome()%></td>
                                <td><%=cliente.getNascimento()%></td>
                                <td><%=cliente.getApelido()%></td>
                            </tr>
                            <% } %>
                        </tbody>
                            
                            
                          
                            <tfoot>
                                <tr>
                                    <th>Nome</th>
                                    <th>Sobrenome</th>
                                    <th>Data de Nascimento</th>
                                    <th>Apelido</th>
                                </tr>
                            </tfoot>
                        </table>
                        <!-- DATATABLES -->                   

                    </div>
                </div>

            </div>
        </div>


    </div>
</div>
<!-- /page content -->


   