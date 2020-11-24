//
//  Message.swift
//  List-Filter
//
//  Created by Sacha Schwab on 24.11.20.
//

import UIKit
import SwiftUI

class Message: Identifiable, ObservableObject {
    var id: String = UUID().uuidString
    @Published var messageText: String
    @Published var date: Date
    
    init(messageText: String, date: Date) {
        self.messageText = messageText
        self.date = date
    }
}
