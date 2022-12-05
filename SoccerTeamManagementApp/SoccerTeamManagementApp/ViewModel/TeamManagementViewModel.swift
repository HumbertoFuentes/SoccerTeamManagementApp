//
//  TeamManagementViewModel.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/5/22.
//

import Foundation
import SwiftUI
import Firebase

class TeamManagementViewModel : ObservableObject {
    
    @Published var user : User = User()
    @Published var rosterArray : [Player] = []
    
    func register(email : String, password : String) {
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if error != nil {
                    //probably want an alert
                    print(error!.localizedDescription)
                }
            }
        }
        
        func login(email : String, password : String) {
            Auth.auth().signIn(withEmail: email, password: password){ result, error in
                if error != nil {
                    print(error!.localizedDescription)
                }
                
                print("User \(Auth.auth().currentUser?.email ?? "Default Value") logged in")
            }
        }
        
        func signOut() {
            do {
                print("Attempting to sign out \(Auth.auth().currentUser?.email ?? "Default Value")")
                try Auth.auth().signOut()
                print("User sucessfully signed out")
            } catch let error {
                print("Error: \(error)")
                
            }
        }
}
