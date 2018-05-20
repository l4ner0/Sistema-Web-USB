<%-- 
    Document   : modificarCarrera
    Created on : 20/05/2018, 04:06:35 AM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Semestre</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<%=request.getContextPath()%>/css/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="<%=request.getContextPath()%>/css/jquery.ui.base.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/jquery.ui.all.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">    
    <link href="<%=request.getContextPath()%>/css/jquery.ui.theme.css" rel="stylesheet" type="text/css"/>          
    <link href="<%=request.getContextPath()%>/css/style1.css" rel='stylesheet' type='text/css' />
    <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/css/responsive.bootstrap.min.css"  rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/css/bootstrap.min_1.css"  rel="stylesheet"  >
    <link href="<%=request.getContextPath()%>/css/estilosCarrera.css"  rel="stylesheet"  >
    
    <script src="<%=request.getContextPath()%>/jquery-ui/jquery.alerts.js" ></script>          
    <script src="<%=request.getContextPath()%>/jquery-ui/jquery.js"></script>      
    <script src="<%=request.getContextPath()%>/js/jquery.dataTables.min1.js"></script>
    <script src="<%=request.getContextPath()%>/js/dataTables.bootstrap.min1.js"></script>
    <script src="<%=request.getContextPath()%>/js/dataTables.responsive.min1.js"></script>
    <script src="<%=request.getContextPath()%>/js/responsive.bootstrap.min1.js"></script>            
    <script src="<%=request.getContextPath()%>/js/bootstrap.min1.js" ></script>       
    <script  src="<%=request.getContextPath()%>/javascript/javascript.js"></script>
    <script type="text/javascript">
        jQuery(function ($) {
            $('#carousel1').carousel({
                interval: 10000
            });

            var clickEvent = false;

            $('#carousel1').on('click', '.nav a', function () {
                clickEvent = true;
                $('.nav li').removeClass('active');
                $(this).parent().addClass('active');
            }).on('slid.bs.carousel', function (e) {
                if (!clickEvent) {
                    var count = $('.nav').children().length - 1;
                    var current = $('.nav li.active');
                    current.removeClass('active').next().addClass('active');
                    var id = parseInt(current.data('slide-to'));
                    if (count == id) {
                        $('.nav li').first().addClass('active');
                    }
                }
                clickEvent = false;
            });
        });
    </script>         
</head>
<body>
    <div class="header">
        <div class="container header_top">
            <div >
                <img src="<%=request.getContextPath()%>/imagenes/encabezado.jpg" width="100%" />        
            </div>   
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">       
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Desplegar navegación</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>  

            <div class="collapse navbar-collapse navbar-ex1-collapse">     
                <ul class="nav navbar-nav">      
                    <li class="dropdown">
                        <a href="" >
                            <img src="<%=request.getContextPath()%>/imagenes/main.png"     alt="Ir Principal">   Principal</b>
                        </a>        
                    </li>
                </ul> 
                
                <ul class="nav navbar-nav">      
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<%=request.getContextPath()%>/imagenes/mantenimiento.png"     alt="Ir Mantenimiento">  Mantenimientos <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">        
                            <li><a href="">Semestre</a></li>
                            <li><a href="">Carrera Profesional</a></li>
                            <li><a href="">Alumno</a></li>
                            <li><a href="">Docente</a></li>
                            <li><a href="">Materia</a></li>
                            <li><a href="">Unidad Tematica</a></li>
                            <li><a href="">Tema</a></li>
                            <li><a href="">Tipo Examen</a></li>
                            <li><a href="">Rol</a></li>                                
                            <li><a href="">Nivel Dificultad</a></li>                                   
                        </ul>
                      </li>
                </ul>
                
                <ul class="nav navbar-nav">   
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<%=request.getContextPath()%>/imagenes/banco.png"     alt="Banco preguntas">Banco Preguntas<b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">                    
                            <li><a href="">Registrar Pregunta Examen Supervisado</a></li>
                            <li class="divider"></li>
                            <li><a href="">Registrar Pregunta Examen Training</a></li>                  
                        </ul>
                    </li>
                </ul>

                <ul class="nav navbar-nav">   
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<%=request.getContextPath()%>/imagenes/banco.png"   width="18px" height="18px"  alt="Banco preguntas"></i>Organizacion<b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">                    
                            <li><a href="">Registrar Estructura Examen </a></li>  
                            <li><a href="">Programar Horario Examen</a></li>
                            <li><a href="">Programar Materia x Semestre</a></li>
                            <li><a href="">Asignar Docente x Materia x Semestre</a></li>    
                            <li><a href="">Generar Examen</a></li>
                            <li><a href="">Ver Resultados de Examen</a></li>
                        </ul>
                    </li>
                </ul>   

                <ul class="nav navbar-nav">   
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<%=request.getContextPath()%>/imagenes/banco.png"     alt="Banco preguntas">Aplicacion Examen<b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">                    
                            <li><a href="">Realizar Calificacion Examen </a></li>
                            <li class="divider"></li>
                            <li><a href="">Resultados Examen </a></li>                  
                        </ul>
                    </li>
                </ul>  

                <ul class="nav navbar-nav">   
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<%=request.getContextPath()%>/imagenes/candado1.png"     alt="Configuracion">Seguridad<b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">                    
                            <li>
                                <a href="">
                                    <img src="<%=request.getContextPath()%>/imagenes/gestionarusuarios.png"  width="35px" height="35px"   alt="Gestionar Usuario y Privilegios">Gestionar Usuario
                                    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;y Privilegios
                                </a>
                            </li>
                        </ul>
                    </li>      
                </ul> 
                
                <ul class="nav navbar-nav navbar-right">   
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<%=request.getContextPath()%>/imagenes/configuracion.png"     alt="Configuracion"> Configuracion<b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">                 
                            <li><a href=""><img src="<%=request.getContextPath()%>/imagenes/actualizar.png"     alt="Configuracion"> Actualizar Informacion</a></li>
                            <li class="divider"></li>
                            <li><a href=""><img src="<%=request.getContextPath()%>/imagenes/llaves.png"     alt="Configuracion"> Cambiar Contraseña</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><img src="<%=request.getContextPath()%>/imagenes/exit.png"     alt="Salir"> Salir</a></li>      
                        </ul>
                    </li>      
                </ul> 
            </div>
        </nav>
    </div>
</div>
    <div class="container">
        <div class="row">
           <div class="cuerpo">
                <div class="titulo-cuerpo">
                    <h3>Mantenimiento de la Tabla Carrera</h3>
                    <h3>Modificar Carrera</h3>  
                </div>
                <div class="registro-carrera">
                   <br><br>
                    <form role="form">
                        <div class="form-group">
                            <label for="txtCodigo">Codigo</label>
                            <input type="text" class="form-control" id="txtCodigo" value="3" disabled>
                        </div>
                        <div class="form-group">
                            <label for="txtNombre">Nombre</label>
                            <input type="text" class="form-control" id="txtNombre" value="DERECHO">
                        </div>
                         <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label>
                                      <input type="checkbox" checked> Habilitado
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="botones-registrar">
                            <a type="button" class="btn btn-primary" href="<%=request.getContextPath()%>/mantenimiento/personal/tablaCarrera.jsp">Grabar</a>
                            <a type="button" class="btn btn-primary" href="<%=request.getContextPath()%>/mantenimiento/personal/tablaCarrera.jsp">Salir</a>
                        </div>
                    </form>
                    <br><br>
                </div>   
           </div> 
        </div>
    </div>
    <div class="container footer">    
        <div class="footer_bottom">
            <div class="copy">
                <p>Derechos  Reservados  por Ing.Ivan Petrlik </p>
            </div>
            <ul class="social">
			    <li><a href=""> <i class="fb"> </i> </a></li>
			    <li><a href=""><i class="tw"> </i> </a></li>
            </ul>
            <div class="clearfix"> </div>
        </div>
    </div>   
</body>
</html>
