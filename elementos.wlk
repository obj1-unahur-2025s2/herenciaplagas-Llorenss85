import plaga.*
class Hogar{
    var nivelDeMugre
    const confort 
    method esBueno() = nivelDeMugre <= (confort/2)  
    method  efectoDePlaga(unaPlaga){
        nivelDeMugre+= unaPlaga.nivelDeDaño()
    }
}

class Huerta{
    var capacidadDeProduccion
    method esBueno() = capacidadDeProduccion >self.nivel()
    method nivel()=nivelHuerta.nivel()  
    method efectoPlaga(unaPlaga) {
      if(unaPlaga.transmiteEnfermedad()){
        capacidadDeProduccion -= unaPlaga.nivelDeDaño() *0.10 + 10
      } 
      else{
        capacidadDeProduccion -= unaPlaga.nivelDeDaño() *0.10
      }
    }
}
object nivelHuerta {
    var nivel=0
    method nivel() =nivel
    method asignarNivel(unNivel) {
      nivel=unNivel
    } 

}

class Mascota {
  const salud
  method esBueno() = salud >250 
}


class Barrio {
    const elementos=[]
    method elementoEsBueno(unElemento) =unElemento.esBueno() 
    
    method cantBuenos() = elementos.filter({e => e.esBueno()})
    method cantNoBuenos()=elementos.fiter({e=> not e.esBueno()})
    method barrioCopado() = self.cantBuenos()> self.cantNoBuenos() 
     
}

