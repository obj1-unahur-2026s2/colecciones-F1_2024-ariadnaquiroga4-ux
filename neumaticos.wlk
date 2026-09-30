
object blando {
    const duracion = 15
    method duracion() = duracion
    method rindeMejor(c) {
        return c <= 25
    }
}

object medio {
    const duracion = 30
    method duracion() = duracion
    method rindeMejor(c) {
        return c >= 25 and c <= 40
    }
}

object duro {
    const duracion = 45
    method duracion() = duracion
    method rindeMejor(c) {
        return c > 40
    }
}