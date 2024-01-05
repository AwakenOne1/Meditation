//
//  ChoiceView.swift
//  Meditation
//
//  Created by Alexey Dubovik on 29.12.23.
//

import SwiftUI

struct CategoryView: View {
    var category: CategoryModelProtocol
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1568627506, green: 0.160784319, blue: 0.1686274558, alpha: 1)), Color(#colorLiteral(red: 0.1568627506, green: 0.6549019814, blue: 0.6901960969, alpha: 1))]),
                                     startPoint: .topLeading, endPoint: .bottomTrailing))
                .edgesIgnoringSafeArea(.all)
            VStack {
                RoundImageView(image: Image( category.categoryImageName))
                    .padding(.horizontal)
                Divider()
                Text(category.categoryName)
                    .font(.title)
                Text(category.categoryDescription)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    CategoryView(category: CategoryModel(categoryName: "Дыхание", categoryDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", categoryImageName: "Breathing"))
}

