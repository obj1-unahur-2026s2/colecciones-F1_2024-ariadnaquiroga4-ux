import pilotos.*
import escuderias.*
import neumaticos.*

object campeonato {
    var pilotos = []
    var primerLugar = "verstappen"
    var segundoLugar = "norris"
    var mejorVuelta = "sainz"
    method primerLugar() = primerLugar
    method segundoLugar() = segundoLugar
    method mejorVuelta() = mejorVuelta

    method registrarPiloto(piloto) {
        pilotos.add(piloto)
    }
    method darDeBajaPiloto(piloto) {
        pilotos.remove(piloto)
    }
    method registrarCierreFecha(pilotoPrimero, pilotoSegundo) {
        primerLugar = pilotoPrimero
        segundoLugar = pilotoSegundo
    }
    method mejorVuelta(unPiloto) {
        mejorVuelta = unPiloto
    }
    method pilotoLider() {
        return pilotos.max({p => p.puntos()})
    }
    method puntosTotalDeEscuderia(escuderia) {
        return pilotos.filter({p => p.correPara() == escuderia}).sum({p => p.puntos()})
    }
    method deltaDePuntos() {
        return self.pilotoLider().puntos() - pilotos.min({p => p.puntos()}).puntos()
    }
    method esCompetitivo() {
        return self.deltaDePuntos() < 100
    }
    method hayPilotoEscuderia(escuderia) {
        return pilotos.any({p => p.correPara() == escuderia})
    }
    method sumaTotal() {
        return pilotos.sum({p => p.puntos()})
    }
}