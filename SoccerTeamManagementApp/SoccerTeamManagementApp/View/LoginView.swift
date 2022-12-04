//
//  LoginView.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/3/22.
//

import Foundation
import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
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
                
                TextField("Password", text: $password)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding(.vertical)
                    .padding(.leading)
                    .background(.white)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                NavigationLink(destination: HomeView(), label: {
                    Text("Sign in")
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .background(.blue)
                        .cornerRadius(10)
                })
                .padding(.horizontal)
                .padding(.top)
                .simultaneousGesture(TapGesture().onEnded({
                    //we need to validate user information
                    if email == "" || password == "" {
                        //one of the fields is empty
                        
                    }
                }))
            }
            
            
        }
    }
}
