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
    
    //firebase functions
    
    //registers a user with firebase
    func register(email : String, password : String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                //probably want an alert
                print(error!.localizedDescription)
            }
        }
    }
    
    //logs in a user to firebase
    func login(email : String, password : String) {
        Auth.auth().signIn(withEmail: email, password: password){ result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
            
            print("User \(Auth.auth().currentUser?.email ?? "Default Value") logged in")
        }
    }
    
    //signs out a user from firebase
    func signOut() {
        do {
            print("Attempting to sign out \(Auth.auth().currentUser?.email ?? "Default Value")")
            try Auth.auth().signOut()
            print("User sucessfully signed out")
        } catch let error {
            print("Error: \(error)")
            
        }
    }
    
    //helper functions
    
    //adds a player to roster array
    func addPlayer (name : String, height : String, weight : String, position : String){
        
        //create player object from parameters being passed in
        var player = Player(name: name, picture: "photo", height: height, weight: weight, position: position)
        
        //appending player object
        rosterArray.append(player)
    }
        
}
