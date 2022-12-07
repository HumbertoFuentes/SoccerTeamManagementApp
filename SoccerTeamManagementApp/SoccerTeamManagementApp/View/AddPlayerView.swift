//
//  AddPlayerView.swift
//  SoccerTeamManagementApp
//
//  Created by Humberto Fuentes on 12/5/22.
//

import Foundation
import SwiftUI

struct AddPlayerView : View {
    
    //view model passed from roster view
    @ObservedObject var teamManagementVM : TeamManagementViewModel
    
    //fields
    @State var name = ""
    @State var height = ""
    @State var weight = ""
    @State var position = ""
    
    var body: some View {
        Text("Enter player information")
        
        TextField("name", text: $name)
            .foregroundColor(.gray)
            .font(.headline)
            .padding(.vertical)
            .padding(.leading)
            .background(.white)
            .frame(maxWidth: .infinity)
            .cornerRadius(10)
            .padding(.horizontal)
            .textInputAutocapitalization(.never)
        TextField("height", text: $height)
            .foregroundColor(.gray)
            .font(.headline)
            .padding(.vertical)
            .padding(.leading)
            .background(.white)
            .frame(maxWidth: .infinity)
            .cornerRadius(10)
            .padding(.horizontal)
            .textInputAutocapitalization(.never)
        TextField("weight", text: $weight)
            .foregroundColor(.gray)
            .font(.headline)
            .padding(.vertical)
            .padding(.leading)
            .background(.white)
            .frame(maxWidth: .infinity)
            .cornerRadius(10)
            .padding(.horizontal)
            .textInputAutocapitalization(.never)
        TextField("position", text: $position) //might be changed to a checkbox situation for future version
            .foregroundColor(.gray)
            .font(.headline)
            .padding(.vertical)
            .padding(.leading)
            .background(.white)
            .frame(maxWidth: .infinity)
            .cornerRadius(10)
            .padding(.horizontal)
            .textInputAutocapitalization(.never)
        
        //button to add player
        Button(action: {
            //call teamManagementVM to add a player to a roster
            teamManagementVM.addPlayer(name: name, height: height, weight: weight, position: position)
        }, label: {
            Text("Add")
        })
    }
}
