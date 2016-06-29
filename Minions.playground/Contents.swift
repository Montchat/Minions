//: Playground - noun: a place where people can play

import UIKit

class Minion {
    
    typealias Name = String
    typealias Hearts = Int
    
    let hearts:Hearts!
    
    init(hearts: Hearts) { self.hearts = hearts
        
    }
    
}

class LadyDeath : Minion {
    
    let name:Name! = "Lady Death"
    let weapon:Weapon! = Weapon(type: .Bow)
    
    
}

class Weapon {
    
    enum Type {
        case Bow, Sword
    }
    
    let type:Type
    
    init(type: Type) {
        self.type = type
        
    }
    
}