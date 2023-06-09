//
//  Color.swift
//  UberClone
//
//  Created by Abhilekh Borah on 08/06/23.
//

import Foundation
import SwiftUI

extension Color{
    static let theme = ColorTheme()
}

struct ColorTheme{
    let backgroundColor = Color("BackgroundColor")
    let secondaryBackgroundColor = Color("SecondaryBacgroundColor")
    let primaryTextColor = Color("PrimaryTextColor")
    
}
