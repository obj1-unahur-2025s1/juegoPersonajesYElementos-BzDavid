import armasElementos.*

//Jugadora
object luisa {
  var personajeActivo = 'No tengo personaje activo'

  method aparece(elemento){
    personajeActivo.encontrar(elemento)
  }

  method personajeActivo() = personajeActivo

  method cambiarPersonajeActivoA_(nuevoPersonaje){
    personajeActivo = nuevoPersonaje
  }
}

//Personajes
object floki {
  var armaEquipada = ballesta

  method encontrar(elemento){
    if (armaEquipada.estaCargada()){
      armaEquipada.utilizarArma()
      elemento.esAtacado()
    }
  }

  method cambiarArma(nuevaArma) {
    armaEquipada = nuevaArma
  }

  method armaEquipada() = armaEquipada
}

object mario {
  var valorRecolectado = 0

  var esFeliz = false

  method encontrar(elemento){
    valorRecolectado = valorRecolectado + elemento.valorAOtorgar()
    esFeliz = valorRecolectado >= 50 or elemento.altura() > 10
  }

  method esFeliz() = esFeliz

  method valorRecolectado() = valorRecolectado
}

