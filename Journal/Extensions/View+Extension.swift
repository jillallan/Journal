//
//  View+Extension.swift
//  Journal
//
//  Created by Jill Allan on 22/10/2023.
//

import Foundation
import SwiftUI

extension View {
    // https://designcode.io/swiftui-handbook-conditional-modifier
    // https://www.avanderlee.com/swiftui/conditional-view-modifier/
    
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
         if condition {
             transform(self)
         } else {
             self
         }
     }
}
