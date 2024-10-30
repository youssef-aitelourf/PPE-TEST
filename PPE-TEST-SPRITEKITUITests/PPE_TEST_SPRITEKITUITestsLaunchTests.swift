//
//  PPE_TEST_SPRITEKITUITestsLaunchTests.swift
//  PPE-TEST-SPRITEKITUITests
//
//  Created by Youssef Ait Elourf on 10/30/24.
//

import XCTest

final class PPE_TEST_SPRITEKITUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}