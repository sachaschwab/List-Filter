//
//  CellView.swift
//  List-Filter
//
//  Created by Sacha Schwab on 24.11.20.
//

import SwiftUI

struct CellView: View {
    let messageText: String
    let dateText: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(messageText)
                .font(.title)
            Text(dateText)
                .font(.subheadline)
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(messageText: "mock text", dateText: String(describing: Date()))
    }
}
