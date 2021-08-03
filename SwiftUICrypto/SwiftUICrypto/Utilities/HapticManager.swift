//
//  HapticManager.swift
//  SwiftUICrypto
//
//  Created by Rahul on 1/8/21.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}









