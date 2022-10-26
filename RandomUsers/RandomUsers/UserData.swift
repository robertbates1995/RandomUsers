//
//  UserData.swift
//  RandomUsers
//
//  Created by Robert Bates on 10/26/22.
//

import Foundation

class UserData {
    var users: String = ""
    
    init() {
        Task {
            do {
                let users = try await UserFetchingClient.getUsers()
                self.users = users
            }
            catch {
                print(error)
            }
        }
    }
}
