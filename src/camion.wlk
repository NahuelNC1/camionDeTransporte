import cosas.*

object camion {
	const cargaDelCamion=[]
	const taraDelCamion=1000
	
	method cargar(cosa)=cargaDelCamion.add(cosa)
	
	method descarga(cosa)=cargaDelCamion.remove(cosa)
	
	method todoPesoPar()=cargaDelCamion.all({objeto=>objeto.peso().even()})
	
	method hayAlgunoQuePesa(peso)=cargaDelCamion.any({objeto=>objeto.peso()==peso})
	
	method elDeNivel(nivel)=cargaDelCamion.find({objeto=>objeto.nivelDePeligrosidad()==nivel})
	
	method pesoTotal()=cargaDelCamion.sum({objeto=>objeto.peso()})+ taraDelCamion
	
	method excedidoDePeso()=self.pesoTotal()>2500
	
	method objetosQueSuperanPeligrosidad(nivel)=cargaDelCamion.filter({objeto=>objeto.nivelDePeligrosidad()>nivel})
	
	method objetosMasPeligrososQue(cosa)=cargaDelCamion.filter({objeto=>objeto.nivelDePeligrosidad()>cosa.nivelDePeligrosidad()})
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad)=not self.excedidoDePeso() and cargaDelCamion.all({objeto=>objeto.nivelDePeligrosidad()<nivelMaximoPeligrosidad})
	
	method tieneAlgoQuePesaEntre(min,max)=cargaDelCamion.any({objeto=>objeto.peso().between(min,max)})
	
	method cosaMasPesada()=cargaDelCamion.max({objeto=>objeto.peso()})
	
	method pesos()=cargaDelCamion.map({objeto=>objeto.peso()})

}

