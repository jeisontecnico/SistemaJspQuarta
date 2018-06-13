<h2>Placas de video</h2>
<% for (int x = 1; x <= 5; x++) { %>

<div class="col-md-55">
    <div class="thumbnail">
        <div class="image view view-first">
            <img style="width: 40%; display: block;" src="images/n105toc.jpg" alt="image">
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
            <p> Placa de Vídeo VGA NVIDIA GIGABYTE GEFORCE GTX 1050 Ti OC 4G - GV-N105TOC-4GD </p>
            <%--
            <p>Produto <b><% out.print(x); %></b></p>
            --%>
        </div>
    </div>
</div>
<% }%>
