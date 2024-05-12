object knightRider {
	method peso()=500
	method nivelDePeligrosidad()=10

}

object bumblebee {
	var esRobot=false
	var esAuto=true
	
	method peso()=800
	
	method estaEnRobot(){
		esRobot=true
		esAuto=false
	}
	
	method estaEnAuto(){
		esRobot=false
		esAuto=true
	}
	
	method nivelDePeligrosidad()=if(esAuto){15} else {30}  

}

object paqueteLadrillos{
	var cantidadDeLadrillos=0
	method agregarLadrillos(cantidad){cantidadDeLadrillos+=cantidad}
	
	method peso()=2*cantidadDeLadrillos
	method nivelDePeligrosidad()=2

}


object arena {
	var property peso
	method nivelDePeligrosidad()=1

}

object bateriaAntiarea {
	var tieneMisiles=false
	method ponerMisiles(){
		tieneMisiles=true
	}
	method tieneMisiles()=tieneMisiles
	method peso()=if(tieneMisiles){300}else{200}
	method nivelDePeligrosidad()=if(tieneMisiles){100}else{0}

}

object contenedor {
	const objetos=[]
	method agregarObjeto(unObjeto)=objetos.add(unObjeto)
	method peso()=objetos.sum({objeto=>objeto.peso()})+100
	method nivelDePeligrosidad()=if(objetos.isEmpty()){0}else{objetos.max({objeto=>objeto.nivelDePeligrosidad()})}

}

object residuosRadioactivos {
	var property peso
	method nivelDePeligrosidad()=200

}

object embalajeSeguridad {
	var objeto= paqueteLadrillos
	method objeto(unObjeto){
		objeto=unObjeto
	}
	method peso()=objeto.peso()
	method nivelDePeligrosidad()=objeto.nivelDePeligrosidad()/2

}