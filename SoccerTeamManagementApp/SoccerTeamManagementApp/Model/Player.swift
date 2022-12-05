//
//  Player.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/5/22.
//

import Foundation
import SwiftUI

struct Player : Identifiable {
    var id = UUID()
    
    var name : String
    var picture : String //for now a string until i can save
    var height : String
    var weight : String
    var position : String
}
