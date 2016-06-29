//: Playground - noun: a place where people can play

import UIKit

class Character {
    
    typealias Name = String
    
    let name:Name!
    
    init(name:Name) {
        self.name = name
        
    }
    
}

class Minion : Character {
    
    typealias Hearts = Int
    typealias Damage = Int
    
    let weapon:Weapon!
    let hearts:Hearts!
    
    init(name: Name, hearts: Hearts, weapon:Weapon) {
        
        self.hearts = hearts
        self.weapon = weapon
        
        super.init(name: name)
        
    }
    
    internal func attackMinion(minon:Minion, withWeapon weapon: Weapon) -> Damage {
        
        guard let type = weapon.type else { return 0 }
        switch type {
        case .Bow:
            return 5
        case .Sword:
            return 5
            
        }
        
    }
    
}

class TheHero : Minion {
    
    init() {
        
        let hearts:Hearts = 10
        let name = "Lady Death"
        let ladyDeathsBow = Weapon(name: "Lady Death's Bow", type: .Bow)
        super.init(name: name, hearts: hearts, weapon: ladyDeathsBow)
        
    }
    
}

class Weapon {
    
    typealias Name = String
    
    let name:Name?
    
    enum Action {
        case Swing, Shoot
    }
    
    private let action: Action!
    
    enum Type {
        case Bow, Sword
    }
    
    let type:Type!
    
    init(name:Name, type: Type) {
        self.name = name
        
        self.type = type
        
        switch type {
            
        case .Bow:
            self.action = .Shoot
        case .Sword:
            self.action = .Swing
            
        }
        
    }
    
}