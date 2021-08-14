//
//  String.swift
//  SwiftUICrypto
//
//  Created by Rahul on 14/8/21.
//

import Foundation


extension String {
    
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
