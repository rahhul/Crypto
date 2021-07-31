//
//  UIApplication.swift
//  SwiftUICrypto
//
//  Created by Rahul on 30/7/21.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}


