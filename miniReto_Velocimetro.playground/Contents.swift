// Semana 4, mini_reto, Glenn Benavides

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad : Velocidades

    init(){
        velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena : String){
        let actual = velocidad.rawValue  // Almacena la velocidad actual antes de cambiarla, en Int
        var velocidadEnCadena : String = ""
        
        if self.velocidad == Velocidades.Apagado {
            velocidadEnCadena = "Apagado"
            self.velocidad = Velocidades.VelocidadBaja
        } else if self.velocidad == Velocidades.VelocidadBaja {
            velocidadEnCadena = "Velocidad baja"
            self.velocidad = Velocidades.VelocidadMedia
        } else if self.velocidad == Velocidades.VelocidadMedia {
            velocidadEnCadena = "Velocidad media"
            self.velocidad = Velocidades.VelocidadAlta
        } else if self.velocidad == Velocidades.VelocidadAlta {
            velocidadEnCadena = "Velocidad alta"
            self.velocidad = Velocidades.VelocidadMedia
        }
        
        let estadoActual = (actual, velocidadEnCadena)
        return estadoActual
    }
    

}

var auto = Auto()

for i in 1...20{
    print ("\(i).  \(auto.cambioDeVelocidad())")
}
