//
//  JournalTests.swift
//  JournalTests
//
//  Created by Jill Allan on 22/10/2023.
//

import XCTest
@testable import Journal

final class EnvironmentValuesExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPrefersTabNavigationEnvironmentKey_whenPhoneOrTV_shouldReturnTrue() throws {
        let userInterfaceIdioms = [
            "phone": UITraitCollection.init(userInterfaceIdiom: .phone),
            "tv": UITraitCollection.init(userInterfaceIdiom: .tv)
        ]
        
        for (key, value) in userInterfaceIdioms {
            let prefersTabNavigation = PrefersTabNavigationEnvironmentKey.read(from: value)
            XCTAssertTrue(prefersTabNavigation, "Should return true if \(key)")
        }
    }
    
    func testPrefersTabNavigationEnvironmentKey_whenNotPhoneOrTV_shouldReturnFalse() throws {
        let userInterfaceIdioms = [
            "pad": UITraitCollection.init(userInterfaceIdiom: .pad),
            "carPlay": UITraitCollection.init(userInterfaceIdiom: .carPlay),
            "mac": UITraitCollection.init(userInterfaceIdiom: .mac),
            "unspecified": UITraitCollection.init(userInterfaceIdiom: .unspecified),
            "vision": UITraitCollection.init(userInterfaceIdiom: .vision),
        ]
        
        for (key, value) in userInterfaceIdioms {
            let prefersTabNavigation = PrefersTabNavigationEnvironmentKey.read(from: value)
            XCTAssertFalse(prefersTabNavigation, "Should return false if \(key)")
        }
    }
}
