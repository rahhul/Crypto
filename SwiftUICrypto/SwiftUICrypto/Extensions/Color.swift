//
//  Color.swift
//  SwiftUICrypto
//
//  Created by Rahul on 19/7/21.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
    static let launch = LaunchTheme()
}


struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}


struct ColorTheme2 {
    let accent = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    let background = Color(#colorLiteral(red: 0.07101313025, green: 0.07101313025, blue: 0.07101313025, alpha: 1))
    let green = Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    let red = Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
    let secondaryText = Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
}

struct LaunchTheme {
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}
