//
//  RandomUsersTests.swift
//  RandomUsersTests
//
//  Created by Robert Bates on 10/26/22.
//

import XCTest
@testable import RandomUsers

final class RandomUsersTests: XCTestCase {
    
    func testUserModel() throws {
        let jsonData = getTestJSONData()
        
        guard let _ = try JSONDecoder().decode(Response.self, from: jsonData) else {
            XCTFail("Failed to decode JSON into the model: \(error)")
            return
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
