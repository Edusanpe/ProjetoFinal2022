<%-- 
    Document   : index
    Created on : 30/03/2022, 10:34:41
    Author     : Sala305b
--%>
<%@page import="modelo.Usuario"%>
<%
    String responsavel = "", caminho="../";
    session = request.getSession();
    Usuario user = (Usuario) session.getAttribute("user");
    responsavel = "Olá," + user.getResponsavel();

%>   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresa</title>
        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="../css/bootstrap.css" >
        <link rel="stylesheet" href="../css/estiloempresacliente.css" >

       
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
              integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    </head>


    <body>



        <!--No lugar de "never bar" tem que colocar a logo-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div style="display:inline; float: left;">
                <a class="navbar-brand" href="indexc.jsp"><img src="<%= caminho%>img/logoacademia128.png" width="128px" alt="imagem" /></a>
            </div>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!--Aqui é o menu da parte de cima da página web-->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="<%= caminho%>cliente/empresac.jsp"><h5>Empresa</h5> <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a  class="nav-link" href="<%= caminho%>cliente/atividadesc.jsp"><h5>Atividade</h5> <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a  class="nav-link" href="<%= caminho%>cliente/planosc.jsp"><h5>Plano</h5> <span class="sr-only">(current)</span></a>
                    </li> 
                    <li class="nav-item ">
                        <a  class="nav-link" href="<%= caminho%>cliente/telaagendamentoc.jsp"><h5>Agendamento</h5> <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a  class="nav-link" href="<%= caminho%>cliente/faleconoscoc.jsp"><h5>Fale Conosco</h5> <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <img class="user" src="<%=caminho%>img/user(4).png" width="50px" alt="imagem"> <span><%= responsavel%></span>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <a class="btn btn-danger my-2 my-sm-0" href="../tela/index.jsp">Sair</a>
                </form>
            </div>

        </nav>  

        <div class="container-fluid">

            <!--Codigo para adicionar o conteudo na tela -->
            <div class="row">
                <div class="col-3"></div>
                <div class="col-6">
                   <h2><center>Plano</center></h2>
                    <center><p><h3>Planos e promoções imperdivéis!</h3><p/>
                        <h5><p>Treine todos os dias em sua unidade sem taxa de cancelamento e sem taxa de anuidade.</h5>
                        O cancelamento deve ser avisado com no mínimo 30 dias de antecedência do próximo vencimento.<br>
                        Plano Gold Sem Adesão válido somente no site.
                        O acesso do (a) convidado (a) só é liberado na unidade de matrícula.
                    
                  
                    </center>
                    <p style="text-align: justify;">
                    <center><img src="<%= caminho%>img/planoeditado.png" alt="imagem"></center> 
                    </p> 
                </div>
                <div class="col-3"></div>

            </div>


            <!--Aqui é o codigo das imagens para adicionar no site-->
           
        <!--Aqui é o roda pé e as informaçoes do roda pé-->
        <footer class="bg-dark text-light">
            <div class="container-fluid py-3">
                <div class="row">

                    <div class="col-12">

                        <div class="row">
                            <div class="col-4">
                                <ul class="nav flex-column">
                                    <li class="nav-link"><h5>Contato</h5></li>
                                    <li class="nav-link"><a href="#">(27)99923-2453</a></li>
                                    <li class="nav-link"><a href="#">NeverFat@gmail.com</a></li>
                                    <li class="nav-link"><a href="#"></a></li>

                                </ul>

                            </div>
                            <div class="col-4">
                                <ul class="nav flex-column text-center">
                                    <li class="nav-link"><h5>Horário de Funcionamento</h5></li>
                                    <li class="nav-link"><a href="#">Segunda á Sexta</a></li>
                                    <li class="nav-link"><a href="#">7:00 ás 22:00 hrs</a></li>

                                </ul>
                            </div>
                            <div class="col-4">
                                <ul class="nav flex-column float-right">
                                    <li class="nav-link"><h5>Redes Sociais</h5></li>

                                    <li class="nav-link">
                                        <img class="img" src="<%= caminho%>img/instagram (1).png" width="32px" alt="imagem">
                                        <a href="#">@NeverFatDf</a></li>
                                    <li class="nav-link">
                                        <img class="img" src="<%= caminho%>img/icons8-facebook-48.png" width="32px" alt="imagem">
                                        <a href="#">NeverFatOf</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>


                </div>
            </div>

            <!--finalização do roda pé com o ano atual -->
            <div class="text-center" style="background-color: #333; padding: 20px;" >
                Copyright © 2022 © Academia & Outsourcing | Todos os direitos reservados.
            </div>
        </footer>


        <script type="text/javascript" src="<%= caminho%>js/jquery.js"></script>
        <script type="text/javascript" src="<%= caminho%>js/bootstrap.js"></script>
        <script type="text/javascript" src="<%= caminho%>js/jquery.mask.js"></script>
    </body>
</html>

