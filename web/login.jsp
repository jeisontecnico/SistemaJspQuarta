<html lang="en">
  <head>
 <%@include file="header.jsp"%>
  </head>
  <%
  session.setAttribute("usuario", "");
  %>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="./Logar" method="post">
              <h1>Login do Sistema</h1>
              <div>
                <input type="text" name="user" id="user" class="form-control" placeholder="Usuario" required="" />
              </div>
              <div>
                <input type="password" name="password" id="password" class="form-control" placeholder="Senha" required="" />
              </div>
              
                  <div>
                <input type="submit" value="entrar">
                </div>
                

              <div class="clearfix"></div>

              <div class="separator">
               

                <div class="clearfix"></div>
                <br />

                <div>
                    <h1><i class="fa fa-desktop"></i> Sistema Loja</h1>
                </div>
              </div>
            </form>
          </section>
        </div>


      </div>
    </div>
  </body>
</html>

