//
//  Item.swift
//  Journal
//
//  Created by Jill Allan on 22/10/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
