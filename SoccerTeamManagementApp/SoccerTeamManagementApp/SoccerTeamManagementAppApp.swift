//
//  SoccerTeamManagementAppApp.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/3/22.
//

import SwiftUI
import Firebase

@main
struct SoccerTeamManagementAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            InitialView()
        }
    }
}
