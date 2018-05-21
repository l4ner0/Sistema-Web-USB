<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <script src="<%=request.getContextPath()%>/javascript/javascript.js" type="text/javascript"></script>
        <script type="text/javascript">
             function changeFunc() {               
                 var op = document.getElementById("selectBox");
                 var op=op.options[op.selectedIndex].value;
                  if(op==='1'){
                    location.href="<%=request.getContextPath()%>/Seguridad/Frm_Docente_Gestion.jsp";
                    }
                     else {
                      location.href="#";
                    }     
            }
            
        </script>
        
        <title>GESTIÓN DE USUARIOS Y PRIVILEGIOS</title>
    </head>
    <body>
        <form name="form">
            <input type="hidden" name="op">
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
                                <a href="<%=request.getContextPath()%>/index.jsp">
                                    <img src="<%=request.getContextPath()%>/imagenes/main.png" alt="Ir Principal"/>Principal
                                </a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=request.getContextPath()%>/imagenes/mantenimiento.png" alt="Ir Mantenimiento"/>Mantenimiento<b class="caret"></b></a>
                                <ul class="dropdown-menu">                               
                                    <li><a href="javascript:Mantenimiento('<%=request.getContextPath()%>','PersonalServlet',7)">Semestre</a></li>
                                    <li><a href="javascript:Mantenimiento('<%=request.getContextPath()%>','PersonalServlet',8)">Carrera Profesional</a></li>
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
                                        <a href="javascript:configuracion('<%=request.getContextPath()%>','PersonalServlet',4)"><img src="<%=request.getContextPath()%>/imagenes/actualizar.png"/>Actualizar Informacion</a>                                
                                    </li>
                                    <li>                                
                                      <a href="javascript:configuracion('<%=request.getContextPath()%>','PersonalServlet',5)"><img src="<%=request.getContextPath()%>/imagenes/llaves.png" alt=""/>Cambiar Contraseña</a>                                  
                                    </li>                            
                                </ul>
                            </li>                                
                        </ul>
                     </div>
                </nav>
                <div class="usertype">
                    <h3>Gestionar Usuario y Privilegios</h3>
                </div>
                <div class="Gest_user__privil">
                    <p>Tipo de Usuario:</p>
                    <select id="selectBox" onchange="changeFunc()" style="width: 85%;padding:8px;margin-left: 100px;border-radius:10px">
                        <option>--Seleccionar Tipo de Usuario--</option>
                        <option value="1">Docente</option>
                        <option value="2">Estudiante</option>
                    </select>
                    <a type="button" class="btn btn-primary" href="<%=request.getContextPath()%>/index.jsp" style="padding:5px 5px 0 5px;margin-top:80px; margin-left:50%">
                        <p><img src="<%=request.getContextPath()%>/imagenes/salirdatos.png" style="width: 30px;height:25px"/>Salir</p></a>                    
                </div>
                
        </div>
            
            <div class="container footer">
                <div class="footer_bottom">
                    <p>Derechos Reservados por alumnoUNFV</p>
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
