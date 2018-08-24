//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by 田中 秀典 on 2018/08/22.
//  Copyright © 2018年 田中 秀典. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    // MARK: Meal Class Tests
    // Confirm that the Meal initializer return a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        // Zero rating
        let zeroRatingMeal = Meal(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    // Confirm that the Meal initializer returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Meal(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
