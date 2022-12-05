//
//  User.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/5/22.
//

import Foundation
import SwiftUI

struct User : Identifiable {
    var id = UUID()
    
    var username : String = ""
    var email : String = ""
    var password : String = ""
    var roster : [Player] = []
}
