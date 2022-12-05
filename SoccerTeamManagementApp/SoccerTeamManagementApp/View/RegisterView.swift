//
//  RegisterView.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/3/22.
//

import Foundation
import SwiftUI

struct RegisterView: View {
    
    //view model being passed in from initial view
    @ObservedObject var teamManagementVM : TeamManagementViewModel
    
    //user fields
    @State var username = ""
    @State var email = ""
    @State var confirmPassword = ""
    @State var password = ""
    
    @State var showAlert = false
    
    //validation field testing
    func checkHomeViewStatus () -> Bool {
        var result = false
        if password == confirmPassword {
            print("Passwords matching")
            result = true
        }
        return result
    }
    
    var body: some View {
        ZStack {
            //background
            LinearGradient(gradient: Gradient(colors: [.green, .white, .red]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            
            VStack {
                //content
                TextField("Username", text: $username)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding(.vertical)
                    .padding(.leading)
                    .background(.white)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .textInputAutocapitalization(.never)
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
                SecureField("Password", text: $password)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding(.vertical)
                    .padding(.leading)
                    .background(.white)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .textInputAutocapitalization(.never)
                SecureField("Confirm Password", text: $confirmPassword)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding(.vertical)
                    .padding(.leading)
                    .background(.white)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .textInputAutocapitalization(.never)
                
                //submit button
                NavigationLink(destination: HomeView(teamManagementVM: teamManagementVM), label: {
                    Text("Create Account")
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .background(.blue)
                        .cornerRadius(10)
                })
                .disabled(email == "" || password == "" || confirmPassword == "" || username == "" || !checkHomeViewStatus())
                .padding(.horizontal)
                .simultaneousGesture(TapGesture().onEnded({
                    //register user
                    teamManagementVM.register(email: email, password: password)
                }))
                
            }
            .alert("Passwords are not matching", isPresented: $showAlert, actions: {})
            
        }
    }
}
