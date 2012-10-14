package rps

class Event {
    String name
    static hasMany = [categories:Category]

    static constraints = {
        name(blank:false)
    }

    String toString() {
        name
    }
}
