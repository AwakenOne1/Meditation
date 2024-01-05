//
//  SwiftUIView.swift
//  Meditation
//
//  Created by Alexey Dubovik on 29.12.23.
//

import SwiftUI

struct TabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            TabBarItem(imageName: "tab1", title: "Категория 1", isSelected: selectedTab == 0) {
                selectedTab = 0
            }
            
            TabBarItem(imageName: "tab2", title: "Категория 2", isSelected: selectedTab == 1) {
                selectedTab = 1
            }
            
            TabBarItem(imageName: "tab3", title: "Категория 3", isSelected: selectedTab == 2) {
                selectedTab = 2
            }
        }
        .padding(.horizontal)
        .frame(maxHeight: 50)
        .background(Color.white)
    }
}

#Preview {
    TabBar()
}
