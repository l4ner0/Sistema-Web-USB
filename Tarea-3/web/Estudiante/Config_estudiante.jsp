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
                                <a href="<%=request.getContextPath()%>/index.jsp>">
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
                                        <a href="javascript:configEstudiante('<%=request.getContextPath()%>','EstudianteServlet',3)">Actualizar Informacion</a>                                
                                    </li>
                                    <li>                                
                                      <a href="">Cambiar Contraseña</a>                                  
                                    </li>                            
                                </ul>
                            </li>                                
                        </ul>
                     </div>
                </nav>
                                <div style="background: #fff; height: 800px;padding:50px">
                                    <div class="form-group">
                                        <label for="inputcode" class="col-sm-2 control-label">Codigo :</label>
                                        <div class="col-sm-10" style="width: 81%;margin-left:-10px">
                                          <input type="text" class="form-control" id="inputcode">
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                        <label for="inputname" class="col-sm-2 control-label">Nombre :</label>
                                        <div class="col-sm-10" style="width: 81%;margin-left:-10px">
                                          <input type="text" class="form-control" id="inputname">
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                        <label for="inputapellp" class="col-sm-2 control-label">Apellido Paterno :</label>
                                        <div class="col-sm-10" style="width: 81%;margin-left:-10px">
                                          <input type="text" class="form-control" id="inputapellp">
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                        <label for="inputapellm" class="col-sm-2 control-label">Apellido Materno :</label>
                                        <div class="col-sm-10" style="width: 81%;margin-left:-10px">
                                          <input type="text" class="form-control" id="inputapellm">
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Email :</label>
                                        <div class="col-sm-10" style="width: 81%;margin-left:-10px">
                                          <input type="email" class="form-control" id="inputEmail3">
                                        </div>
                                    </div>
                                    <div>Imagen :<input type="file"></div>
                                    <div class="form-group">
                                        <label for="inputnumber" class="col-sm-2 control-label">Nro Telefono :</label>
                                        <div class="col-sm-10" style="width: 81%;margin-left:-10px">
                                          <input type="text" class="form-control" id="inputnumber">
                                        </div>
                                    </div> 
                                    <p>Direccion :<textarea class="form-control" rows="3" >Jr. Direccion del lugar</textarea></p>
                                    
                                    <div>
                                    <a type="button" class="btn btn-primary btn-lg active" style="padding:5px 5px 0 5px;margin-top:50px; margin-left:40%"><p style="text-align:center">Actualizar Datos</p></a>
                                    <a type="button" class="btn btn-default btn-lg active" href="<%=request.getContextPath()%>/index.jsp>" style="padding:5px 5px 0 5px;margin-top:50px"><p style="text-align:center"><img src="<%=request.getContextPath()%>/imagenes/salirdatos.png" style="width: 30px;height:25px"/>Salir</p></a>
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
        </form>
    </body>
</html>
                                 