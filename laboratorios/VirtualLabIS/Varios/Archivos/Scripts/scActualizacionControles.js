
    function roundNumber(decimalSep,numberVal) {
	   var rlength = decimalSep;
       var newnumber = Math.round(numberVal*Math.pow(10,rlength))/Math.pow(10,rlength);
	   return newnumber;
    }

    function establecerEstandares()
    {
      //alert("establecerEstandares")
      if(document.frmMain.txtNumberLongBars.value!="" && document.frmMain.txtLongBarDiameter.value!="" && document.frmMain.txtSectionDiameter.value!="" && document.frmMain.txtTransverseReinfDiam.value!="" && document.frmMain.txtConvertLB.value!="" && document.frmMain.txtAxialLoad.value!="" && document.frmMain.txtConcrComprStrength.value!="" && document.frmMain.txtSectionDiameter.value!="" && document.frmMain.txtSpacingTransSteel.value!="" && document.frmMain.txtConvertLB.value!=""){
            document.frmMain.txtLongRR.value=roundNumber(3,((document.frmMain.txtNumberLongBars.value * Math.pow(document.frmMain.txtLongBarDiameter.value, 2) / Math.pow(document.frmMain.txtSectionDiameter.value, 2)) * 100)); //+ "%"
            document.frmMain.txtTransRR.value=roundNumber(3,(4 * (Math.PI * Math.pow(document.frmMain.txtTransverseReinfDiam.value, 2) / 4) / (document.frmMain.txtSectionDiameter.value - 2 * document.frmMain.txtConvertLB.value) / document.frmMain.txtSpacingTransSteel.value) * 100)
            document.frmMain.txtAxialLoadRatio.value=roundNumber(3,(((document.frmMain.txtAxialLoad.value) / ((document.frmMain.txtConcrComprStrength.value * 1000 * Math.pow((document.frmMain.txtSectionDiameter.value / 1000), 2) * Math.PI )/ 4)) * 100)); //+ "%"
            
         }  
      else{
             document.frmMain.txtLongRR.value="";
             document.frmMain.txtTransRR.value="";
             document.frmMain.txtAxialLoadRatio.value="";
      }
      
      if (document.frmMain.txtLongRYS.value!=""){
          document.frmMain.tbDeformacionFluenciaAceroLongitudinal.value = roundNumber(4,(document.frmMain.txtLongRYS.value / 200000))
      }
      
      if (document.frmMain.txtConcrComprStrength.value!=""){
          document.frmMain.tbModuloElasticidadConcreto.value = roundNumber(0,(4700 * Math.sqrt(document.frmMain.txtConcrComprStrength.value)));
      }
      document.frmMain.tbModuloElasticidadAcero.value="200000";
      establecerDatosEsquema();    
    }
    
  function establecerDatosEsquema()
  {
   //Asignacion de datos al esquema.
//   alert("establecerEstandares")
      if (document.frmMain.txtSectionDiameter.value!=""){
          getFlashMovieObject("Flash1Exp").SetVariable("diametro",document.frmMain.txtSectionDiameter.value + " mm");    
      }   
      if(document.frmMain.txtTransverseReinfDiam.value!="" || document.frmMain.txtSpacingTransSteel.value!=""){
        if (document.frmMain.txtTransverseReinfDiam.value!=""){
              getFlashMovieObject("Flash1Exp").SetVariable("drt"," # "+document.frmMain.txtTransverseReinfDiam.value);    
        }
        if (document.frmMain.txtSpacingTransSteel.value!=""){
             if (document.frmMain.txtTransverseReinfDiam.value!=""){
               getFlashMovieObject("Flash1Exp").SetVariable("drt"," # "+document.frmMain.txtTransverseReinfDiam.value + " @ " + document.frmMain.txtSpacingTransSteel.value + " mm");
             }
            else {
             getFlashMovieObject("Flash1Exp").SetVariable("drt"," @ " + document.frmMain.txtSpacingTransSteel.value+" mm");
            }        
        }  
      }else{
        getFlashMovieObject("Flash1Exp").SetVariable("drt","");
      }
      
      if(document.frmMain.txtNumberLongBars.value!="" || document.frmMain.txtLongBarDiameter.value!=""){
        if (document.frmMain.txtNumberLongBars.value!="" ){
              getFlashMovieObject("Flash1Exp").SetVariable("drl", document.frmMain.txtNumberLongBars.value)
        }
      
         if (document.frmMain.txtLongBarDiameter.value!=""){
             if (document.frmMain.txtNumberLongBars.value!=""){
                  getFlashMovieObject("Flash1Exp").SetVariable("drl", document.frmMain.txtNumberLongBars.value + " # " + document.frmMain.txtLongBarDiameter.value + " mm");
            }
            else {
                getFlashMovieObject("Flash1Exp").SetVariable("drl", " # " + document.frmMain.txtLongBarDiameter.value + " mm");
          }        
        } 
      }else{
           getFlashMovieObject("Flash1Exp").SetVariable("drl", "");
      }
       if (document.frmMain.txtConvertLB.value!=""){
          getFlashMovieObject("Flash1Exp").SetVariable("recubrimiento",document.frmMain.txtConvertLB.value + " mm");    
      }     
  } 
 
  function getDatos(msg) {
    //alert(msg);
    //document.write(msg)
    var linea=new String(msg);
    lista = linea.split(" ");
    
    document.frmMain.txtSectionDiameter.focus();   

    //Visualiza los Parametros de Diseño de una Linea(o Análisis) Seleccionada de la grafica AMC
    document.frmMain.txtSectionDiameter.value = lista[0];
    document.frmMain.txtConvertLB.value = lista[1];
    document.frmMain.txtLongBarDiameter.value = lista[2];
    document.frmMain.txtNumberLongBars.value = lista[3];
    document.frmMain.txtTransverseReinfDiam.value = lista[4];
    document.frmMain.ddTipo.value=lista[5];
    document.frmMain.txtSpacingTransSteel.value = lista[6];
    document.frmMain.txtConcrComprStrength.value = lista[7];
    document.frmMain.txtLongRYS.value = lista[8];
    document.frmMain.txtTransRYS.value = lista[9];
    document.frmMain.txtLongRMX.value = lista[10];
    document.frmMain.txtAxialLoad.value = lista[11];
    document.frmMain.hiddNumTest.value = lista[12]; //La "lista[12]" es el ID de la COLUMNA
    
    //Visualiza los Indicadores de Análisis de una Iteracion determinada o seleccionada
    document.frmMain.tbMomentoPrimeraFluencia.value= lista[14];
    document.frmMain.tbPrimeraCurvaturaFluencia.value= lista[15];
    document.frmMain.tbMomentoNominal.value= lista[16];
    document.frmMain.tbCurvaturaFluencia.value= lista[17];
    document.frmMain.tbInerciaGruesa.value= lista[18];
    document.frmMain.tbIncerciaAgrietada.value= lista[19];
    document.frmMain.tbIcrIg.value= lista[20];
    
    establecerEstandares();   //Calcula u visualiza los Indicadores de Diseño de una Iteracion Selecionada del AMC
    establecerDatosEsquema(); //Actualiza es Esquema de la Columna Segun se seleccione una Linea(o Análisis) de la grafica AMC
    document.frmMain.btnEliminarTest.disabled = ""; 
    document.frmMain.btnEliminarTest.value="Delete 'Response " + (parseInt(lista[13])) + "'";     //La "lista[13]" es la Secuencia
}

  //Procedimiento para limpiar los campos del formulario
  function limpiar(){
    document.frmMain.txtSectionDiameter.value = "";
    document.frmMain.txtConvertLB.value = "";
    document.frmMain.txtLongBarDiameter.value = "";
    document.frmMain.txtNumberLongBars.value = "";
    document.frmMain.txtTransverseReinfDiam.value = "";
    document.frmMain.ddTipo.value="spirals";
    document.frmMain.txtSpacingTransSteel.value = "";
    document.frmMain.txtConcrComprStrength.value = "";
    document.frmMain.txtLongRYS.value = "";
    document.frmMain.txtTransRYS.value = "";
    document.frmMain.txtLongRMX.value = "";
    document.frmMain.txtAxialLoad.value = "";
    document.frmMain.txtLongRR.value=""
    document.frmMain.txtTransRR.value=""
    document.frmMain.txtAxialLoadRatio.value=""
    
    
    document.frmMain.tbModuloElasticidadConcreto.value = ""
    document.frmMain.tbDeformacionFluenciaAceroLongitudinal.value = ""
    document.frmMain.tbMomentoPrimeraFluencia.value= "";
    document.frmMain.tbPrimeraCurvaturaFluencia.value= "";
    document.frmMain.tbMomentoNominal.value= "";
    document.frmMain.tbCurvaturaFluencia.value= "";
    document.frmMain.tbInerciaGruesa.value= "";
    document.frmMain.tbIncerciaAgrietada.value= "";
    document.frmMain.tbIcrIg.value= "";
    document.frmMain.hiddNumTest.value = "";
         return false;
  }  
  
  function cargarEjemplo(){
        document.frmMain.txtSectionDiameter.value = 1000;
        document.frmMain.txtConvertLB.value = 100;
        document.frmMain.txtLongBarDiameter.value= 40;
        document.frmMain.txtNumberLongBars.value = 10;
        document.frmMain.txtTransverseReinfDiam.value = 12;
        document.frmMain.ddTipo.value="Spirals";
        document.frmMain.txtSpacingTransSteel.value = 50;
        document.frmMain.txtConcrComprStrength.value = 36.4;
        document.frmMain.txtLongRYS.value = 462;
        document.frmMain.txtTransRYS.value = 462;
        document.frmMain.txtLongRMX.value = 600;
        document.frmMain.txtAxialLoad.value = 0;
        establecerEstandares();
        establecerDatosEsquema(); 
  }
  
function getFlashMovieObject(ID)
{  
  ID+= "_movie";
  if (window.document[ID]) 
  {
     return window.document[ID];
  }
  if (navigator.appName.indexOf("Microsoft Internet")==-1)
  {
    if (document.embeds && document.embeds[ID])
         return document.embeds[ID]; 
  }
  else   {
         return document.getElementById(ID);
  }
} 
