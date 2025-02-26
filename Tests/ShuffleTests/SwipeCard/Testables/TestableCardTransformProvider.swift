//
//  TestableCardTransformProvider.swift
//  ShuffleTests
//
//  Created by Mac Gallagher on 7/21/19.
//  Copyright © 2019 Mac Gallagher. All rights reserved.
//

@testable import Shuffle

class TestableCardTransformProvider: CardTransformProvider {
    
    static var testCardRotationDirectionY: CGFloat?
    override class var cardRotationDirectionY: (SwipeCard) -> CGFloat {
        return { card in
            testCardRotationDirectionY ?? super.cardRotationDirectionY(card)
        }
    }
    
    static var testCardRotationAngle: CGFloat?
    override class var cardRotationAngle: (SwipeCard) -> CGFloat {
        return { card in
            testCardRotationAngle ?? super.cardRotationAngle(card)
        }
    }
    
    // MARK: - Test Helpers
    
    static func reset() {
        testCardRotationDirectionY = nil
        testCardRotationAngle = nil
    }
}
