import jugadoresPersonajes.luisa
//Armas
object ballesta {
  var cantidadDeFlechas = 10

  var estaCargada = cantidadDeFlechas > 0

  var cantidadDeVecesUtilizada = 0

  method utilizarArma(){
    if(estaCargada){
      cantidadDeVecesUtilizada = cantidadDeVecesUtilizada + 1
      cantidadDeFlechas = cantidadDeFlechas - 1
    }
    
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

  method potencia() = 30
}

//Elementos
object castillo {
  var danoARecibir = luisa.personajeActivo().armaEquipada().potencia()

  var nivelDeDefensa = 150

  method esAtacado() {
    nivelDeDefensa = nivelDeDefensa - danoARecibir
  }

  method altura() = 20
}

object aurora {
  var danoARecibir = luisa.personajeActivo().armaEquipada().potencia()

  var viva = true

  method esAtacado() {
    viva = danoARecibir >= 10
  }

  method altura() = 1
}

object tipa {
  var altura = 8

  method altura() = altura
  
  method esAtacado() = 'jaja saludos crack'

  method crecer() {
    altura = altura + 1
  }  
}