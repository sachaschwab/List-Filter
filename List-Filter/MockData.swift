//
//  MockData.swift
//  List-Filter
//
//  Created by Sacha Schwab on 24.11.20.
//

import SwiftUI

class MockData: ObservableObject {
    @Published var items = [Message]()
    init() {
        objectWillChange.send()
        
        let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: Date())
        let yesterdayBefore = Calendar.current.date(byAdding: .day, value: -2, to: Date())

        items.append(Message(messageText: "This is my today's message", date: Date()))
        items.append(Message(messageText: "Yesterday's message", date: yesterday ?? Date()))
        items.append(Message(messageText: "Message from yesterday before", date: yesterdayBefore ?? Date()))
    }
}
