import armasElementos.*

//Jugadora
object luisa {
  var personajeActivo = floki

  method personajeActivo() = personajeActivo

  method cambiarPersonajeActivoA_(nuevoPersonaje){
    personajeActivo = nuevoPersonaje
  }
}

//Personajes
object floki {
  var clase = "Guerrero"

  var armaEquipada = ballesta

  method encontrar(elemento){
    if (armaEquipada.estaCargada()){
      elemento.esAtacado()
    }
  }

  method queClaseEs() = clase

  method armaEquipada() = armaEquipada

}

object mario {
  var clase = "Trabajador"

  var esFeliz = true

  method encontrar(elemento){
    
  }

  method queClaseEs() = clase
}

