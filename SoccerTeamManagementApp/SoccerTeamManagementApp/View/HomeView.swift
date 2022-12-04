//
//  HomeView.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/3/22.
//

import Foundation
import SwiftUI

struct HomeView: View {
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
                ProfileView()
                    .tabItem({
                        Image(systemName: "person.crop.circle.fill")
                    })
            }
        }
    }
}
