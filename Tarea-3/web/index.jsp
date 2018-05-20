
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PAGINA INICIAL DEL SISTEMA</title>    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min_1.css">
    <script src="<%=request.getContextPath()%>/jquery-ui/jquery.js"></script>   
    <script src="<%=request.getContextPath()%>/js/bootstrap.min1.js" ></script>
   
    <%--- Se le  esta  agregando este  archivo javascript.jsp ---%>
    
     <script src="<%=request.getContextPath()%>/javascript/javascript.js"></script>  
     
    <%--- fin de  esta  importacion ---%>
    
</head>

<body>
    <form  name="form">
        <input type="hidden" name="op">
        
	<div class="container div_cuerpo" id="div_cuerpo1">	
        <div class="panel panel-primary">
            <div class="panel-heading text-center" >
                <h4>UNIVERSIDAD PERUANA SIMON BOLIVAR</h4>
               
            </div>
            <div class="alert alert-info">
                                    <h4><strong><center> SISTEMA VIRTUAL DE EVALUACION EN  LINEA</center></strong></h4>                            
                        </div>
            <div class="panel-body">
			    <div class="row">
                                
			    	<div class="col-md-6 col-md-offset-3">
                                    <center>  <img  src="<%=request.getContextPath()%>/imagenes/seguridadloguin.png"></center>
			    	</div>
			    </div>			
			    <div class="row">
			    	<div class="col-md-6 col-md-offset-3 error text-center">Acceso al Sistema
			    	</div>
				</div>
			    <div class="row">
			    	<div class="col-md-6 col-md-offset-3"><HR size="3px" color="#0000ff">
			    	</div>
				</div>			
			   
			    <div class="row">
			    	<div class="col-md-6 col-md-offset-3 soluc">
                                    <center> 
                                        <button    class="btn btn-success btn-xlarge"  onclick="usuario('<%=request.getContextPath()%>','PersonalServlet',1)"     >
                                            <center><img  src="<%=request.getContextPath()%>/imagenes/personal.png" width="100px" height="100px"></center><br>
                                            Personal
                                        </button> 
                                        <button    class="btn btn-warning btn-xlarge"  onclick="usuario('<%=request.getContextPath()%>','EstudianteServlet',1)" >
                                            <center>  <img  src="<%=request.getContextPath()%>/imagenes/alumno.png" width="100px" height="100px"></center><br>
                                            Alumno
                                        </button>                
                                    </center>                          
			    	</div>
			    </div>		
			   
            </div>
            <div class="panel-footer text-center">
                Sistema Virtual Evaluacion en Linea - Derechos reservados 2018
            </div>            
        </div>					
	</div>
    </form>
</body>
</html>
