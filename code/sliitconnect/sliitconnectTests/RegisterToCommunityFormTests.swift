//
//  RegisterToCommunityFormTests.swift
//  sliitconnectTests
//
//  Created by Gihan Sudeepa on 2025-04-15.
//

import XCTest
@testable import sliitconnect

final class RegisterToCommunityFormTests: XCTestCase {
    
    func testValidSkillSelection() {
        let selectedSkills = ["Swift", "Python"]
        XCTAssertTrue(selectedSkills.contains("Swift"), "Swift should be in selected skills")
        XCTAssertFalse(selectedSkills.contains("JavaScript"), "JavaScript is not in predefined skills")
    }
}
