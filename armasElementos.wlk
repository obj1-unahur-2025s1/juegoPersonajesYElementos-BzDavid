import jugadoresPersonajes.*
//Armas
object ballesta {
  var cantidadDeFlechas = 10

  var estaCargada = true

  var cantidadDeVecesUtilizada = 0

  method utilizarArma(){
    if(estaCargada){
      cantidadDeVecesUtilizada = cantidadDeVecesUtilizada + 1
      self.usarUnaFlecha()
    }
  }

  method usarUnaFlecha(){
      cantidadDeFlechas = cantidadDeFlechas - 1
      estaCargada = cantidadDeFlechas > 0
  }

  method potencia() = 4

  method estaCargada() = estaCargada

  method recargar(){
    if(not estaCargada){
      cantidadDeFlechas = 10
    }
  }

}

object jabalina {
  var estaCargada = true

  var cantidadDeVecesUtilizada = 0

  method utilizarArma(){
    if(estaCargada){
      cantidadDeVecesUtilizada = cantidadDeVecesUtilizada + 1
      estaCargada = false
    }
  }

  method agarrarJabalina() {
    estaCargada = true
  }

  method estaCargada() = estaCargada

  method potencia() = 30
}

//Elementos
object castillo {
  var nivelDeDefensa = 150

  method esAtacado() {
    nivelDeDefensa = nivelDeDefensa - 
      floki.armaEquipada().potencia()
  }

  method recibirTrabajo(){
    nivelDeDefensa = 200.min(nivelDeDefensa + 20)
  }

  method altura() = 20

  method valorAOtorgar() = nivelDeDefensa / 5
}

object aurora {
  var viva = true

  method esAtacado() {
    viva = floki.armaEquipada().potencia() <= 10
  }

  method recibirTrabajo(){}

  method altura() = 1

  method valorAOtorgar() = 15
}

object tipa {
  var altura = 8

  method altura() = altura
  
  method esAtacado() = 'jaja saludos crack'

  method recibirTrabajo(){
    self.crecer()
  }

  method valorAOtorgar() = altura * 2

  method crecer() {
    altura = altura + 1
  }  
}