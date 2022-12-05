//
//  HomeView.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/3/22.
//

import Foundation
import SwiftUI
import Firebase

struct HomeView: View {
    
    //view model being passed in from Register or Login Views
    @ObservedObject var teamManagementVM : TeamManagementViewModel
    
    var body : some View {
        NavigationView {
            TabView {
                ManagementView()
                    .tabItem({
                        Image(systemName: "clipboard.fill")
                    })
                RosterView()
                    .tabItem({
                        Image(systemName: "person.3.fill")
                    })
                ProfileView(teamManagementVM: teamManagementVM)
                    .tabItem({
                        Image(systemName: "person.crop.circle.fill")
                    })
            }
        }
        .onAppear {
            //test print
            print("Current user is: \(Auth.auth().currentUser?.email)")
            print("Current user identifier is: \(Auth.auth().currentUser?.uid)")
        }
    }
}
