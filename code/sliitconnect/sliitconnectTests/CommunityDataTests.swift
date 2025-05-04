//
//  CommunityDataTests.swift
//  sliitconnectTests
//
//  Created by Gihan Sudeepa on 2025-04-15.
//

import XCTest
@testable import sliitconnect

final class CommunityDataTests: XCTestCase {
    
    func testPopularCommunitiesAreLoaded() {
        XCTAssertFalse(popularCommunities.isEmpty, "Popular communities should not be empty")
    }
    
    func testEachCommunityHasLeader() {
        for community in popularCommunities {
            XCTAssertFalse(community.leader.name.isEmpty, "Each community must have a leader")
        }
    }
    
    func testCommunityMemberCountIncludesLeader() {
        for community in popularCommunities {
            XCTAssertEqual(community.totalMembers, community.members.count + 1, "Total members should include leader")
        }
    }
    
    func testCommunitySkillsAreNotEmpty() {
        for community in popularCommunities {
            XCTAssertFalse(community.skills.isEmpty, "Each community should have at least one skill")
        }
    }
}
