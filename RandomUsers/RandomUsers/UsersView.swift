//
//  ContentView.swift
//  RandomUsers
//
//  Created by Robert Bates on 10/26/22.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Raw JSON Data:")
            }
            ScrollView {
                Text(userData.users)
            }
        }
        .padding()
        .navigationTitle("Random Users")
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
