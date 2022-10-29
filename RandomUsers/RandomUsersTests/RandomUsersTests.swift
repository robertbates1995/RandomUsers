//
//  RandomUsersTests.swift
//  RandomUsersTests
//
//  Created by Robert Bates on 10/26/22.
//

import XCTest
@testable import RandomUsers

import XCTest
@testable import RandomUsers

class RandomUsersTests: XCTestCase {
    func testUserModel() throws {
        let jsonData = getTestJSONData()
        
        do {
            _ = try JSONDecoder().decode(Response.self, from: jsonData)
        }
        catch {
            XCTFail("Failed to decode JSON into the model: \(error)")
        }
    }
    
    private func getTestJSONData() -> Data {
        guard let path = Bundle.main.path(forResource: "randomUsers", ofType: "json") else {
            fatalError("randomUsers.json file not found")
        }
        let internalURL = URL(fileURLWithPath: path)
        return try! Data(contentsOf: internalURL)
    }
}
