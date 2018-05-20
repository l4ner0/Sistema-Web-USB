<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="<%=request.getContextPath()%>/css/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="<%=request.getContextPath()%>/css/jquery.ui.base.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/jquery.ui.all.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/jquery.ui.theme.css" rel="stylesheet" type="text/css"/>          
        <link href="<%=request.getContextPath()%>/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">    
        <link href="<%=request.getContextPath()%>/css/style1.css" rel='stylesheet' type='text/css' />
        <link href="<%=request.getContextPath()%>/css/stylepersonal.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/frm_docente.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/css/responsive.bootstrap.min.css"  rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/css/bootstrap.min_1.css"  rel="stylesheet"  >
        
        <script src="<%=request.getContextPath()%>/jquery-ui/jquery.alerts.js" ></script>          
        <script src="<%=request.getContextPath()%>/jquery-ui/jquery.js"></script>      
        <script src="<%=request.getContextPath()%>/js/jquery.dataTables.min1.js"></script>
        <script src="<%=request.getContextPath()%>/js/dataTables.bootstrap.min1.js"></script>
        <script src="<%=request.getContextPath()%>/js/dataTables.responsive.min1.js"></script>
        <script src="<%=request.getContextPath()%>/js/responsive.bootstrap.min1.js"></script>            
        <script src="<%=request.getContextPath()%>/js/bootstrap.min1.js" ></script>       
        <script  src="<%=request.getContextPath()%>/javascript/javascript.js"></script>
        <script type="text/javascript">
            jQuery(function ($)
            {
                 $('#carousel1').carousel
                 (
                     {
                         interval:1000
                     }
                 );
                 var clickEvent= false;
                 $('#corousel1').on('click', '.nav a' , function()
                 {
                     clickEvent= true;
                     $('.nav li').removeClass('active');
                     $(this).parent().addClass('active');
                 }).on('slid.bs.carousel',function(e){
                     if(!clickEvent){
                         var count= $('.nav').children().lenght - 1;
                         var current= $('.nav.li.active');
                         current.removeClass('active').next().addClass('active');
                         var id=parseInt(current.data('slide-to'));
                         if(count === id)
                         {
                             $('.nav li').first().addClass('active');
                         }
                    }
                         clickEvent= false;
                     });
            });
        </script>
        <title>Formulario Principal Personal</title>
    </head>
    <body>
        <form    name="form">    
  <input type="hidden"  name="op">
        <div class="wrapper">
            <div class="container header_top">
                <img src="<%=request.getContextPath()%>/imagenes/encabezado.jpg" width="100%"/>               
                 <nav class="navbar navbar-default" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-exl-collapse">
                            <span class="sr-only">Desplegar Navegación</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse navbar-exl-collapse">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#">
                                    <img src="<%=request.getContextPath()%>/imagenes/main.png" alt="Ir Principal"/>Principal
                                </a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=request.getContextPath()%>/imagenes/mantenimiento.png" alt="Ir Mantenimiento"/>Mantenimiento<b class="caret"></b></a>
                                <ul class="dropdown-menu">                               
                                    <li><a href="javascript:Mantenimiento('<%=request.getContextPath()%>','PersonalServlet',4)">Semestre</a></li>
                                    <li><a href="javascript:Mantenimiento('<%=request.getContextPath()%>','PersonalServlet',5)">Carrera Profesional</a></li>
                                    <li><a href="">Alumno</a></li>
                                    <li><a href="">Docente</a></li>
                                    <li><a href="">Materia</a></li>
                                    <li><a href="">UNnidad Tematica</a></li>
                                    <li><a href="">Tema</a></li>
                                    <li><a href="">Tipo Examen</a></li>
                                    <li><a href="">Rol</a></li>
                                    <li><a href="">Nivel Dificultad</a></li>                                                                                                  
                                </ul>
                            </li>                              
                        </ul>
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=request.getContextPath()%>/imagenes/candado1.png" alt="Ir Seguridad"/>Seguridad<b class="caret"></b></a>                          
                                <ul class="dropdown-menu">
                                    <li><a href="javascript:seguridad('<%=request.getContextPath()%>','PersonalServlet',3)"><img src="<%=request.getContextPath()%>/imagenes/gestionarusuarios.png" style="width:30px;height: auto"/>Gestionar Usuario y Privilegios</a></li>                          
                                </ul>
                            </li>                            
                        </ul>
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=request.getContextPath()%>/imagenes/configuracion.png"    >Configuracion <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="">Actualizar Informacion</a>                                
                                    </li>
                                    <li>                                
                                      <a href="">Cambiar Contraseña</a>                                  
                                    </li>                            
                                </ul>
                            </li>                                
                        </ul>
                     </div>
                </nav>
            </div>
            <div class="container">
                <div class="row">
                    <div id="contenido">
                        <div id="carousel1" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img width="100%" height="100%" src="<%=request.getContextPath()%>/imagenes/principal2.png" />
                                    <div class="carousel-caption"></div>
                                </div>
                                <div class="item">
                                    <img width="100%" height="100%" src="<%=request.getContextPath()%>/imagenes/principal3.png" />
                                    <div class="carousel-caption">
                                        <div class="col-lg-12 text-center v-center" style="font-size:39pt;">
                                            <a href="#"><span class="avatar"><i class="fa fa-google-plus"></i></span></a>
                                            <a href="#"><span class="avatar"><i class="fa fa-linkedin"></i></span></a>
                                            <a href="#"><span class="avatar"><i class="fa fa-facebook"></i></span></a>
                                            <a href="#"><span class="avatar"><i class="fa fa-github"></i></span></a>
                                        </div> 
                                    </div>
                                </div>
                                <div class="item">
                                    <img width="100%" height="100%" src="<%=request.getContextPath()%>/imagenes/principal1.png" />
                                </div>
                            </div>
                        </div>
                    </div> 
                </div> 
            </div> 
            <div class="container footer">
                <div class="footer_bottom">
                    <p>Derechos Reservados por Edgar Sandoval Carlos</p>
                </div>
                <ul class="social">
                    <li><a href="#"> <i class="fb"></i></a></li>
                    <li><a href="#"> <i class="tw"></i></a></li>
                </ul>
            </div>
        </div>
        </form>
    </body>
</html>
