//
//  View+Extension.swift
//  CarTest
//
//  Created by Bhagwat Singh on 20/05/24.
//

import Foundation
import SwiftUI

extension View {

    func roundCorner(radius: CGFloat) -> some View {
        clipShape(RoundedRectangle(cornerRadius: radius))
    }

    func addBorder(width: CGFloat = 1.0) -> some View  {
        overlay(
            RoundedRectangle(cornerRadius: Theme.cornerRadius.mainWindow)
                .stroke(.gray, lineWidth: width)
        )
    }
}
