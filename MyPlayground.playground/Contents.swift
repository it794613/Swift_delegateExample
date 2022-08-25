
protocol emergency{
    func cpr()
}

class founder{
    var delegate : emergency?
    func situation(){
        print("help!! anyone!!")
    }
    func delegatedHelper(){
        delegate?.cpr()
    }
}

struct medic1: emergency{
    init(person : founder) {
        person.delegate = self
    }
    func cpr(){
        print("medic1 cpr start!!! 1...2...3!!")
    }
}

class docter: emergency{
    init(person: founder) {
        person.delegate = self
    }
    func cpr(){
        print("docter cpr start!! 1...2...3")
    }
    func callNurse(){
        print("prepare surgen!!!!! emergency")
    }
}

class nurse: docter{
    override func cpr(){
        super.cpr()
        print("surgen ready!!")
    }
}


let situationFounder = founder()
situationFounder.situation()
let jinyong = docter(person: situationFounder)
jinyong.cpr()
jinyong.callNurse()
let sujin = nurse(person: situationFounder)
sujin.cpr()
