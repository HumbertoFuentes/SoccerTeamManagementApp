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
                TextField("Email", text: $email)
                TextField("Password", text: $password)
                TextField("Confirm Password", text: $confirmPassword)
                
                //validate textfield information
                if email != "" && password != "" && username != "" && confirmPassword != "" {
                    //we know fields arent an empty string
                }
            }
            
        }
    }
}
