//: Playground - noun: a place where people can play

import UIKit

class GameWorld {
    
    let characters:[Character]!
    
    init(characters:[Character]) {
        self.characters = characters
        
    }
    
}

class Character {
    
    typealias Name = String
    typealias Hearts = Int
    
    let name:Name!
    var hearts:Hearts!
    
    init(name:Name, hearts:Hearts) {
        self.name = name
        self.hearts = hearts
        
    }
    
}

class Lord : Character {
    
    enum Lordship { case Darkness, Light }
    
    let lordship:Lordship!
    
    init(withLordship lordship: Lordship) {
        
        let name:String!
        
        self.lordship = lordship
        
        switch lordship {
            
        case .Darkness: name = "Lord of Darkness"
        case .Light: name = "Lord of Light"
            
        }
        
        super.init(name: name, hearts:100)
        
    }
    
}

class Minion : Character {
    
    typealias Damage = Int
    
    let weapon:Weapon!
    
    enum Allegiance { case Light, Darkness }
    
    var allegiance: Allegiance!
    
    init(name: Name, hearts: Hearts, weapon:Weapon, allegiance:Allegiance) {
        
        self.weapon = weapon
        self.allegiance = allegiance
        
        super.init(name: name, hearts: hearts)
        
    }
    
    internal func attackCharacter(character:Character, withWeapon weapon: Weapon) -> Damage {
        
        guard let type = weapon.type else { return 0 }
        switch type {
        case .Bow:
            return 1
        case .Sword:
            return 1
            
        }
        
    }
    
}

class TheHero : Minion {
    
    init() {
        
        let hearts:Hearts = 3
        let name = "Lady Death"
        let ladyDeathsBow = Weapon(name: "Lady Death's Bow", type: .Bow)
        super.init(name: name, hearts: hearts, weapon: ladyDeathsBow, allegiance: .Darkness)
        
        
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