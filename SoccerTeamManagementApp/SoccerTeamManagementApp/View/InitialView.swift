//
//  InitialView.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/3/22.
//

import Foundation
import SwiftUI

struct InitialView: View {
    
    //view model
    @StateObject var teamManagementVM : TeamManagementViewModel = TeamManagementViewModel()
    
    var body: some View {
       
        NavigationView {
            ZStack {
                //background
                LinearGradient(gradient: Gradient(colors: [.blue, .white, .red]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
                
                //rest of content
                VStack {
                    NavigationLink(destination: LoginView(teamManagementVM: teamManagementVM), label: {
                        Text("Login")
                            .padding(.vertical)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .font(.headline)
                            .background(.blue)
                            .cornerRadius(10)
                    })
                    .padding(.horizontal)
                    
                    NavigationLink(destination: RegisterView(teamManagementVM: teamManagementVM), label: {
                        Text("Register")
                            .padding(.vertical)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .font(.headline)
                            .background(.blue)
                            .cornerRadius(10)
                    })
                    .padding(.top)
                    .padding(.horizontal)
                }
                
            }
        }
        
    }
}
