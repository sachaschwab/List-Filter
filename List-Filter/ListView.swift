//
//  ListView.swift
//  List-Filter
//
//  Created by Sacha Schwab on 24.11.20.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var messageData = MockData()
    
    var body: some View {
        let messagesToDisplay = todayMessages()
        
        List {
            ForEach(messagesToDisplay) { item in
                CellView(messageText: item.messageText, dateText: String(describing: item.date))
            }
        }
    }
    
    func todayMessages() -> [Message] {
        let filterData = messageData.items
        let filtered = filterData.filter {
            Calendar.current.isDateInToday($0.date)
        }
        
        for item in filtered {
            print(String(describing: item.date))
        }
        
        return filtered
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

