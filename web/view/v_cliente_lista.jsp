<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Lista de Clientes</h3>
            </div>

        </div>

        <div class="clearfix"></div>

        

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Clientes</h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br>

                        <!-- DATATABLES -->
                         
                        
                        <h3>Exportar Lista</h3>
                        
                        <table id="mytable" class="display" style="width:100%">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Sobrenome</th>
                                    <th>Data de Nascimento</th>
                                    <th>Apelido</th>
                                    <th></th>
                                    <th></th>
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
                                <td><input type="button" name="edit" value="Editar" style="background-color:green;font-weight:bold;color:white;" onclick="editClient(cliente.getId());"></td>
                                <td><input type="button" name="delete" value="Deletar" style="background-color:red;font-weight:bold;color:white;" onclick="deleteClient(cliente.getId());"></td>
                            </tr>
                            <% } %>
                        </tbody>
                            <tfoot>
                                <tr>
                                    <th>Nome</th>
                                    <th>Sobrenome</th>
                                    <th>Data de Nascimento</th>
                                    <th>Apelido</th>
                                    <th></th>
                                    <th></th>   
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


   