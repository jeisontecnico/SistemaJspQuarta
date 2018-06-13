<h2>Processadores</h2>
<% for (int x = 1; x <= 5; x++) { %>

<div class="col-md-55">
    <div class="thumbnail">
        <div class="image view view-first">
            <img style="width: 40%; display: block;" src="images/i5-8400.jpg" alt="image">
            <div class="mask">
                <%--
                <p> Item <b><% out.print(x); %></b></p>
                <div class="tools tools-bottom">
                    <a href="./item.jsp?n=<% out.print(x); %>"><i class="fa fa-link"></i></a>
                    <a href="#"><i class="fa fa-pencil"></i></a>
                    <a href="#"><i class="fa fa-times"></i></a>
                </div>
                --%>
            </div>
        </div>
        <div class="caption">
            <p> Processador Intel Core i5-8400 Coffee Lake 8a Geração, Cache 9MB, 2.8GHz (4.0GHz Max Turbo), LGA 1151 Intel UHD Graphics 630 - BX80684I58400</p>
            <%--
            <p>Produto <b><% out.print(x); %></b></p>
            --%>
        </div>
    </div>
</div>

<% }%>
