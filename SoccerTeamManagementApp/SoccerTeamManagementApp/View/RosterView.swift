//
//  RosterView.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/3/22.
//

import Foundation
import SwiftUI

struct RosterView: View {
    
    //view model passed from Home View
    @ObservedObject var teamManagementVM : TeamManagementViewModel
    
    @State var showAddPlayerView = false
    
    var body: some View {
        ZStack {
            //background
            LinearGradient(gradient: Gradient(colors: [.white, .green]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Current Roster")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                List (teamManagementVM.rosterArray) { player in
                    ItemRow(player: player)

                }
                
                //button to add players to roster
                Button(action: {
                    showAddPlayerView = true
                }, label: {
                    Text("Add Player")
                })
                .sheet(isPresented: $showAddPlayerView, content: {
                    AddPlayerView(teamManagementVM: teamManagementVM)
                })
                
            }
        }
    }
    
    //item row for list
    struct ItemRow : View {
        
        let player : Player
        
        var body: some View {
            VStack {
                Text(player.position)
                    .font(.title)
                HStack {
                    Text(player.name)
                    Image(systemName: player.picture)
                }
                Text(player.weight)
                Text(player.height)
            }
        }
    }
}
