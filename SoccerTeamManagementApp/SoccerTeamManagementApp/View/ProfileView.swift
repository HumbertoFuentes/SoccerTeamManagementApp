//
//  ProfileView.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/3/22.
//

import Foundation
import SwiftUI
import Firebase

struct ProfileView: View {
    
    //view model being passed from Home View
    @ObservedObject var teamManagementVM : TeamManagementViewModel
    
    //boolean for presenting initalview after signout
    @State var showInitalView = false
    
    var body: some View {
        
        ZStack {
            VStack {
                Text("Profile View")
                Button(action: {
                    //log user out
                    teamManagementVM.signOut()

                    //take user to initview page
                    showInitalView = true
                }, label: {
                    Text("Sign Out")
                })
                .fullScreenCover(isPresented: $showInitalView) {
                    InitialView()
                }
            }
        }
       
    }
}
