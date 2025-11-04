class Plaga {
    var poblacion  
    method transmiteEnfermedad() =  poblacion.size()>10
    method efectoDeAtaque() {
      poblacion += poblacion*0.10 
    }
}

class Cucaracha inherits Plaga{
    var pesoPromedio
    method nivelDeDaño() = poblacion /2 

    override method transmiteEnfermedad() =  super() and   pesoPromedio>10
    override method efectoDeAtaque(){
        super()
        pesoPromedio+=0.2    
    }
    method atacarElemento(unElemento) {
      self.efectoDeAtaque()
      unElemento.efectoPlaga(self)
    }
}

class Pulga inherits Plaga{
    method nivelDeDaño()= poblacion.size() *2 
    override method efectoDeAtaque() {
        poblacion+= poblacion*0.20
    }
}

class Garrapantas inherits Plaga{
    method  nivelDeDaño()= poblacion.size() *2 
}

class Mosquito inherits Plaga{
    method nivelDeDaño() = poblacion.size() 

    override method transmiteEnfermedad() = super() and poblacion % 3==0 

}

