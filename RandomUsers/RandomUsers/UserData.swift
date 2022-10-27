//
//  UserData.swift
//  RandomUsers
//
//  Created by Robert Bates on 10/26/22.
//

import Foundation
import SwiftUI

@MainActor
class UserData: ObservableObject {
    
    @Published var users: String = ""
    
    init() {
        Task {
            await loadUsers()
        }
    }
    
    func loadUsers() async {
        do {
            let users = try await UserFetchingClient.getUsers()
            self.users = users
        } catch {
            print(error)
        }
    }
    
    
}

