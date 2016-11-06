//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/25/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship]
    var books: [Book]
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    
    mutating func sortShips() {
        
        self.ships = self.ships.sorted { $0.0.age > $0.1.age }
        
        for (index, ship) in self.ships.enumerated() {
            
            if ship.name == "Titanic" &&
                index > 0 {
                let titanic = self.ships.remove(at: index)
                self.ships.insert(titanic, at: 0)
            }
        }
    }
    
    mutating func sortBooks() {
        self.books = self.books.sorted{ $0.0.name > $0.1.name }
    }
    
    mutating func sortBowlingPins() {
        self.bowlingPins = self.bowlingPins.sorted{ ($0.0.color).rawValue > ($0.1.color).rawValue }
    }
    
    mutating func sortMusicCDs() {
        self.musicCDs = self.musicCDs.sorted { $0.0.name > $0.1.name }
        
        for (index, cd) in self.musicCDs.enumerated() {
            if cd.name == "Drake" &&
                index > 0 {
                let drake = self.musicCDs.remove(at: index)
                self.musicCDs.insert(drake, at: 0)
            }
        }
    }
    
    mutating func changeColorOfAllPins(to color: Color) {
        self.bowlingPins = self.bowlingPins.map{
            var pin = $0
            pin.changeColor(to: color)
            return pin
        }
    }
}



struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}

extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, orange, yellow, green, blue, indigo, violet
}



struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
