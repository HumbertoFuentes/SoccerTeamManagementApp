//
//  RegisterView.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/3/22.
//

import Foundation
import SwiftUI

struct RegisterView: View {
    
    @State var username = ""
    @State var email = ""
    @State var confirmPassword = ""
    @State var password = ""
    
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
                TextField("Email", text: $email)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding(.vertical)
                    .padding(.leading)
                    .background(.white)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal)
                TextField("Password", text: $password)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding(.vertical)
                    .padding(.leading)
                    .background(.white)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal)
                TextField("Confirm Password", text: $confirmPassword)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding(.vertical)
                    .padding(.leading)
                    .background(.white)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                //submit button
                NavigationLink(destination: HomeView(), label: {
                    Text("Create Account")
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .background(.blue)
                        .cornerRadius(10)
                })
                .padding(.horizontal)
            }
            
        }
    }
}
