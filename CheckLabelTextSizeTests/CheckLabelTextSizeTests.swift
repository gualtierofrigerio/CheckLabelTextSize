//
//  CheckLabelTextSizeTests.swift
//  CheckLabelTextSizeTests
//
//  Created by Gualtiero Frigerio on 07/04/23.
//

import XCTest
@testable import CheckLabelTextSize

final class CheckLabelTextSizeTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testViewControllerStaticSize() {
        continueAfterFailure = true
        let sut = ViewControllerStaticSize()
        sut.view.setNeedsLayout()
        sut.view.layoutIfNeeded()
        sut.view.getAllLabels().forEach { label in
            if label.textDoesntFit() {
                XCTFail("\(label.text!) doesn't fit inside label")
            }
        }
    }

}
