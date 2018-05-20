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
        
        <title>GESTIÓN DE USUARIOS Y PRIVILEGIOS</title>
    </head>
    <body>
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
                                    <li><a href="">Semestre</a></li>
                                    <li><a href="">Carrera Profesional</a></li>
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
                                    <li><a href=""><img src="<%=request.getContextPath()%>/imagenes/gestionarusuarios.png" style="width:30px;height: auto"/>Gestionar Usuario y Privilegios</a></li>                          
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
                 <div class="cambiando_passsword">
                    <img class="candado" src="<%=request.getContextPath()%>/imagenes/CANDADOACCESO.png" style="width:100px;height: 100px;margin-left: 45%"/>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Contraseña</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Nueva Contraseña</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Nueva Contraseña">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Confirmar Nueva Contraseña</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confirmar Nueva Contraseña">
                    </div>
                     <br style="color:#000">
                 <div>
                    <button type="button" class="btn btn-primary btn-lg active" style="padding:5px 5px 0 5px;margin-top:50px; margin-left:40%"><p style="text-align:center">Actualizar Cambios</p></button>
                    <button type="button" class="btn btn-default btn-lg active" style="padding:5px 5px 0 5px;margin-top:50px"><p style="text-align:center"><img src="<%=request.getContextPath()%>/imagenes/salirdatos.png" style="width: 30px;height:25px"/>Salir</p></button>
                </div>  
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
    </body>
</html>
