//
//  main.swift
//  Протокол Car
//
//  Created by Андрей  on 27.06.2021.
//

import Foundation

enum OpenWindow{
    case open, close
}
enum Engine{
    case start, stop
    
}

protocol Car {
    
    var marka: String {get set}
    var chair: Int {get set} //Колличество кресел в авто
    
    func Honk()
    
    
    
}

extension Car {
    
    func openWindow(action: OpenWindow) {
        switch action {
        case.open:
            print("Окна открыты")
        case .close:
            print("Окна закрыты")
        }
        
    }
    
    func engine(action: Engine){
        switch action {
        case .start:
            print("Двигатель запущен")
        case .stop:
            print("Двигатель заглушен")
        }
    }
    
    func Honk() {
            print("Машина издает звуковой сигнал")
        }
    }
    


class TrunkCar: Car {
    
    enum Tunk: String {
        case full, empty
    }
    
    var marka: String
    var chair: Int
    
    var isTunk: Tunk
    
//    func Honk() {
//        <#code#>
//    }
    init(marka: String, chair: Int, isTunk: Tunk){
        
        self.marka = marka
        self.chair = chair
        self.isTunk = isTunk
        
    }
    
    
    
}

extension TrunkCar: CustomStringConvertible{
    var description: String {
        return "Грузовик, \(self.marka), c \(self.chair) сиденьями и \(self.isTunk) кузовом стоит на парковке"
    }
    
    
    
}

class SportCar: Car {
    
    enum Spoiler: String {
        case yes, no
        
    }
    
    
    var isSpoiler: Spoiler
    
    var marka: String
    var chair: Int
    
    init(marka: String, chair: Int, isSpoiler: Spoiler){
        
        self.marka = marka
        self.chair = chair
        self.isSpoiler = isSpoiler
        
    }
    
    
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return "Спортивная машина, \(self.marka), с \(self.chair) сиденьями и \(self.isSpoiler) спойлером готовится к старту"
    }
    
}

let trunk = TrunkCar(marka: "Kamaz", chair: 3, isTunk: .full)
print(trunk)
let sportCar = SportCar(marka: "Porsche911", chair: 5, isSpoiler: .yes)
print(sportCar)

