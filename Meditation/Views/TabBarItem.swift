//
//  TabBarItem.swift
//  Meditation
//
//  Created by Alexey Dubovik on 29.12.23.
//

import SwiftUI

struct TabBarItem: View {
    let imageName: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(isSelected ? .blue : .gray)
                
                Text(title)
                    .font(.caption)
                    .foregroundColor(isSelected ? .blue : .gray)
            }
        }
    }
}

#Preview {
    TabBarItem()
}
