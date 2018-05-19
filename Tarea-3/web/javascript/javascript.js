
function  usuario(ruta,controlador,op)
{
   document.form.action=ruta+"/"+controlador;
   document.form.method="POST";
   document.form.op.value=op;
   document.form.submit();
}

 function  entrar(ruta,controlador,op)
  {
         var  usuario=document.getElementById("txtusu").value;
         var  clave= document.getElementById("txtcla").value;
      
    if(controlador=="PersonalControlador.php") 
    {       
         var tiposuario=document.getElementById("tipousu").value;
         
      if(tiposuario=="0")
      {
          alert("Seleccione el  Tipo de Usuario");
          document.getElementById("tipousu").focus();
          return;
      }
      else if( usuario=="")
      {
          alert("Ingrese  Usuario !!!");
          document.getElementById("txtusu").focus();
          return;
      }else if(clave=="")
      {
          alert("Ingrese  Clave !!!");
          document.getElementById("txtcla").focus();
          return;          
      }else
      {
      
     document.form.action=ruta+"/"+controlador;
     document.form.method="POST";
     document.form.op.value=op;
     document.form.submit();  
      }
      
    }else
    {
               if( usuario=="")
              {
                  alert("Ingrese  Usuario !!!");
                  document.getElementById("txtusu").focus();
                  return;
              }else if(clave=="")
              {
                  alert("Ingrese  Clave !!!");
                  document.getElementById("txtcla").focus();
                  return;          
              }else
              {

             document.form.action=ruta+"/"+controlador;
             document.form.method="POST";
             document.form.op.value=op;
             document.form.submit();  
              }     
    }
      
 }
 
 
  //  AREA DE  MANTENIMIENTOS DE  TABLAS ----
 
 function  Mantenimiento(ruta,controlador,op)
 {
 
   document.form.action=ruta+"/"+controlador;
   document.form.method="POST";
   document.form.op.value=op;
    document.form.submit();    
     
 }
 
 function  Eliminar(ruta,controlador,op,codigo)
 {
 
 document.form.action=ruta+"/"+controlador;
document.form.method="POST";
document.form.op.value=op;
 document.form.codigo.value=codigo;
document.form.submit();    
     
 }
 
 function  nuevo(ruta,controlador,op)
 {
   document.form.action=ruta+"/"+controlador;
  document.form.method="POST";
   document.form.op.value=op;
  document.form.submit();    
     
 }
 
 function  grabarcarrera(ruta,controlador,op)
 {
     //var codcar=document.getElementById("txtcodigo").value;
     var nomcar=document.getElementById("txtnombre").value;
     
//     if(codcar=='')
//     {  alert("Ingrese el  Codigo !!!");
//         document.getElementById("txtcodigo").focus();
//         return;         
//     }else 
//     
     
     if(nomcar=='')
     {   alert("Ingrese el  Nombre !!!");
         document.getElementById("txtnombre").focus();
         return;           
     }else
     {    document.form.action=ruta+"/"+controlador;
          document.form.method="POST";
          document.form.op.value=op;
          document.form.submit();
     }
 }
 
 function    salir(ruta,controlador,op)
 {
          document.form.action=ruta+"/"+controlador;
          document.form.method="POST";
          document.form.op.value=op;
          document.form.submit();     
     
 }
 
  function    cerrarsesionestudiante(ruta,controlador,op)
 {
          document.form.action=ruta+"/"+controlador;
          document.form.method="GET";
          document.form.op.value=op;
          document.form.submit();     
     
 }
 
 
 
 
 
 function  modificar(ruta,controlador,op,codigo,nombre,estado)
 {
          document.form.action=ruta+"/"+controlador;
          document.form.method="POST";
          document.form.op.value=op;
          document.form.codigo.value=codigo;
          document.form.nombre.value=nombre;
          document.form.estado.value=estado;
          document.form.submit();    
     
 }
 
 
 