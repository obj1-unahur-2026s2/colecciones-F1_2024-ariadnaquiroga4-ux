import escuderias.*
import neumaticos.*

object verstappen {
    var puntos = 437
    var vueltaRapida = 0
    method neumatico(neumatico) = neumatico
    method correPara() = escuderias.redBull
    method puntos() = puntos
    method segundoLugar(segundo) = segundo
    method ganaCarrera() {
        self.puntos() + 25
    }
    method hizoVueltaRapida() {
        if(self.puntos() > 200){
            self.puntos() + 1
        }
        vueltaRapida += 1
    }
    method vueltasQueLeQuedanConNeumatico(neu) {
        return self.neumatico(neu).duracion() - vueltaRapida
    }
    method entrarAlPitStop(neumaticoNuevo) {
        self.neumatico(neumaticoNuevo)
    }
}

object norris {
    var puntos = 374
    var vueltaRapida = 0
    method neumatico(neumatico) = neumatico
    method correPara() = escuderias.mclaren
    method puntos() = puntos
    method segundoLugar(segundo) = segundo
    method ganaCarrera() {
        self.puntos() + 25
        if(self.segundoLugar().correPara() == self.correPara()) {
            self.segundoLugar.puntos() + 3
        }
    } //si el que sale segundo es de la misma escuderia le suman 3 a este
    method hizoVueltaRapida() {
        if(self.puntos() > 200){
            self.puntos() + 1
        }
        vueltaRapida += 1
    }
    method vueltasQueLeQuedanConNeumatico(neu) {
        return self.neumatico(neu).duracion() - vueltaRapida
    }
    method entrarAlPitStop(neumaticoNuevo) {
        self.neumatico(neumaticoNuevo)
    }
}

object sainz {
    var puntos = 241
    var vueltaRapida = 0
    var ganoAnteriorCarrera = true
    method neumatico(neumatico) = neumatico
    method ganoAnteriorCarrera() = ganoAnteriorCarrera
    method puntos() = puntos
    method correPara() = escuderias.ferrari
    method segundoLugar(segundo) = segundo
    method ganaCarrera() {
        self.puntos() + 25
        if (self.ganoAnteriorCarrera()) {
            self.puntos() + 10
        }
    }
    method hizoVueltaRapida() {
        self.puntos() + 0
        vueltaRapida += 1
    }
    method vueltasQueLeQuedanConNeumatico(neu) {
        return self.neumatico(neu).duracion() - vueltaRapida
    }
    method entrarAlPitStop(neumaticoNuevo) {
        self.neumatico(neumaticoNuevo)
    }
}

object leclerc {
    var puntos = 356
    var vueltaRapida = 0
    method neumatico(neumatico) = neumatico
    method puntos() = puntos
    method correPara() = escuderias.ferrari
    method segundoLugar(segundo) = segundo
    method ganaCarrera() {
        self.puntos() + 25
        self.segundoLugar().puntos() - 3
    } //le descuenta 3 al que salio segundo
    method hizoVueltaRapida() {
        self.puntos() + 2
        vueltaRapida += 1
    }
    method vueltasQueLeQuedanConNeumatico(neu) {
        return self.neumatico(neu).duracion() - vueltaRapida
    }
    method entrarAlPitStop(neumaticoNuevo) {
        self.neumatico(neumaticoNuevo)
    }
}

object piastri {
    var puntos = 292
    var vueltaRapida = 0
    method neumatico(neumatico) = neumatico
    method puntos() = puntos
    method correPara() = escuderias.mclaren
    method segundoLugar(segundo) = segundo
    method ganaCarrera() {
        self.puntos() +  25
    }
    method hizoVueltaRapida() {
        vueltaRapida += 1
    }
    method vueltasQueLeQuedanConNeumatico(neu) {
        return self.neumatico(neu).duracion() - vueltaRapida
    }
    method entrarAlPitStop(neumaticoNuevo) {
        self.neumatico(neumaticoNuevo)
    }
}