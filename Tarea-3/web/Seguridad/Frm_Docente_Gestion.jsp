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
        
        <script>
            
            function crearuser() {               
                 var carrera = document.getElementById("carreraProfesional");
                 var docentes= document.getElementById("docentes");
                 var rol= document.getElementById("rol");
                 
                 var carrera=carrera.options[carrera.selectedIndex].value;
                 var docentes=docentes.options[docentes.selectedIndex].value;
                 var rol=rol.options[rol.selectedIndex].value;
                  if(carrera==='0'){
                    alert("Ingrese  Carrera!!!");
                    document.getElementById("txtcarrera").focus();
                    return;
                    }else if(docentes==='0'){                   
                    alert("Ingrese  Docente!!!");
                    document.getElementById("txtdocentes").focus();
                    return;
                    }else if(rol==='0'){
                        alert("Ingrese rol");
                        document.getElementById("txtrol").focus();
                    }
                     else {
                        document.form.action=ruta+"/"+controlador;
                        document.form.method="get";
                        document.form.docentes.value=docentes;
                        document.form.submit();  
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
                <div class="contenido_docente">
                    
                    <div class="carrera_profesional">
                        <label class="col-sm-2 control-label">Carrera Profesional</label>
                        <select id="carreraProfesional" name="txtcarrera"  style="width:80.6%; margin-left: 18%">
                            <option value="0">----------------------------------</option>
                            <option value="1">INGENIERIA DE SISTEMAS</option>
                            <option value="2">INGENIERIA INDUSTRIAL</option>
                            <option value="3">INGENIERIA CIVIL</option>
                        </select> 
                    </div>
                    <div class="docentes">
                        <label class="col-sm-2 control-label">Docentes</label>
                        <select id="docentes" name="txtdocentes"  style="width:80.6%; margin-left: 18%">
                            <option value="0">----------------------------------</option>
                            <option value="1">IVAN PETRLIK AZABACHE</option>
                            <option value="2">GALLEGOS COCA CARLOS</option>
                            <option value="3">HUAPAYA</option>
                        </select> 
                    </div>
                    <div class="rol">
                        <label class="col-sm-2 control-label">Rol</label>
                        <select id="rol" name="txtrol" style="width:80.6%; margin-left: 18%">
                            <option value="0">----------------------------------</option>
                            <option value="1">DOCENTE</option>
                            <option value="2">DOCENTE UNIVERSITARIO</option>
                            <option value="3">DOCENTE PRIVADO</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="inputuser" class="col-sm-2 control-label">Usuario</label>
                        <div class="col-sm-10" style="width: 81%;margin-left:-10px">
                          <input type="text" class="form-control" name="txtuser" id="inputuser">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label" >Password</label>
                        <div class="col-sm-10" style="width: 81%;margin-left:-10px">
                          <input type="password" class="form-control" name="txtpass" id="inputPassword3">
                        </div>
                    </div>
                    <div >
                        <a type="button" class="btn btn-primary btn-lg active" style="padding:5px 5px 0 5px;margin-top:50px; margin-left:40%"><p style="text-align:center" onclick="crearuser()">Crear Usuario</p></a>
                        <a type="button" class="btn btn-default btn-lg active" style="padding:5px 5px 0 5px;margin-top:50px" href="<%=request.getContextPath()%>/Seguridad/Gestio_user_privi.jsp"><p style="text-align:center"><img src="<%=request.getContextPath()%>/imagenes/salirdatos.png" style="width: 30px;height:25px"/>Volver</p></a>
                    </div>
                    <br>
                    <div>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Nombre y Apellidos </th>
                                <th>Rol</th>
                                <th>Estado</th>
                                <th>Modificar</th>
                                <th>Habilitar/Dar baja</th>
                            </tr>
                            </thead> 
                            <tbody>
                            <tr>
                                <td>IVAN PETRLIK AZABACHE</td>
                                <td>Administrado</td>
                                <td>Habilitado</td>
                                <td><button class="btns">Modificar</button></td>
                                <td><button class="btns">Habilitar</button> <button class="btns">Dar baja</button></td>
                            </tr>
                            </tbody>
                        </table>
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
