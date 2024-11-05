class Paciente{
  var edad
  var dolor
  var fortaleza

  method edad() = edad
  method dolor() = dolor
  method fortaleza() = fortaleza

  method cumplirAnio(){
    edad += 1
  }

  method disminuirDolor(cantidad){
    dolor = 0.max(dolor - cantidad)
  }

  method aumentarFortaleza(cantidad){
    fortaleza += cantidad
  }

  method puedeUsar(aparato){
    return aparato.puedeSerUsadoPor(self)
  }

  method usar(aparato){
    if(self.puedeUsar(aparato)){
      aparato.usar(self)
    }
  }
}


class Aparato{

}

class Magneto inherits Aparato{

  method usar(paciente){
    paciente.disminuirDolor(paciente.dolor() * 0.1)
  }

  method puedeSerUsadoPor(paciente){
    return true
  }
}

class Bicicleta inherits Aparato{
  method usar(paciente){
    paciente.aumentarFortaleza(3)
    paciente.disminuirDolor(4)
  }

  method puedeSerUsadoPor(paciente){
    return paciente.edad() > 8
  }
}

class Minitramp inherits Aparato{
  method usar(paciente){
    paciente.aumentarFortaleza(paciente.edad() * 0.1)
  }

  method puedeSerUsadoPor(paciente){
    return paciente.dolor() < 20
  }
}