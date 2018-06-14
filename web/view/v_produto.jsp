<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Lista de Produtos</h3>
            </div>

        </div>

        <div class="clearfix"></div>

        

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Produtos</h2>
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
                                    <th>Preço</th>
                                    <th>Descrição</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <jsp:useBean id="produtos" class="beans.ListaProdutos" type="beans.ListaProdutos" scope="page"/>
                            <jsp:useBean id="produto" class="model.bean.ProdutoBean" type="model.bean.ProdutoBean" scope="page"/>
                        <tbody>
                            <br/><%
                                
                                for(int i=0;i < produtos.getProdutos().size();i++) {
                                    produto = produtos.getProdutos().get(i);
                            %>
                            <tr>
                                <td><%=produto.getNome() %></td>
                                <td><%=produto.getPreco()%></td>
                                <td><%=produto.getDescricao()%></td>
                                <td><input type="button" name="edit" value="Editar" style="background-color:green;font-weight:bold;color:white;" onclick=""></td>
                                <td><input type="button" name="delete" value="Deletar" style="background-color:red;font-weight:bold;color:white;" onclick=""></td>
                            </tr>
                            <% } %>
                        </tbody>
                            <tfoot>
                                <tr>
                                    <th>Nome</th>
                                    <th>Preço</th>
                                    <th>Descrição</th>
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


   
