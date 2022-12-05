//
//  LoginView.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/3/22.
//

import Foundation
import SwiftUI
import Firebase

struct LoginView: View {
    
    //view model passed from inital view
    @ObservedObject var teamManagementVM : TeamManagementViewModel
    
    @State var email = ""
    @State var password = ""
    
    var notLoggedInScreen : some View {
        ZStack {
            //background
            LinearGradient(gradient: Gradient(colors: [.blue, .white, .green]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            
            VStack {
                //content
                TextField("Email", text: $email)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding(.vertical)
                    .padding(.leading)
                    .background(.white)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .textInputAutocapitalization(.never)
                
                TextField("Password", text: $password)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding(.vertical)
                    .padding(.leading)
                    .background(.white)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .textInputAutocapitalization(.never)
                
                NavigationLink(destination: HomeView(teamManagementVM: teamManagementVM), label: {
                    Text("Sign in")
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .background(.blue)
                        .cornerRadius(10)
                })
                .disabled(email.isEmpty || password.isEmpty)
                .padding(.horizontal)
                .padding(.top)
                .simultaneousGesture(TapGesture().onEnded({
                    //login user
                    teamManagementVM.login(email: email, password: password)
                    
                    //we need to create a function after fetching user from firebase that makes sure
                }))
                
            
            }
            
            
        }
    }
    
    var body: some View {
        
        if Auth.auth().currentUser != nil {
            //user is still logged in from previous session
            HomeView(teamManagementVM: teamManagementVM)
        }
        else {
            //we want to show the log in view
            notLoggedInScreen
        }
        
    }
}
