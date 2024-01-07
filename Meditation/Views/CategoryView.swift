//
//  ChoiceView.swift
//  Meditation
//
//  Created by Alexey Dubovik on 29.12.23.
//

import SwiftUI

struct CategoryView: View {
    let categories = [CategoryModel(categoryName: "Дыхание", categoryDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", categoryImageName: "Breathing", systemImageName: "lungs.fill"), CategoryModel(categoryName: "Медитация", categoryDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", categoryImageName: "Meditation", systemImageName: "leaf.fill"), CategoryModel(categoryName: "Отдых", categoryDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", categoryImageName: "Relax", systemImageName: "bed.double.fill")]
    
    @State var selectedCategory = 0
    
    var body: some View {
        TabView(selection: $selectedCategory) {
            ForEach(0..<3) { index in
                ZStack {
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1568627506, green: 0.160784319, blue: 0.1686274558, alpha: 1)), Color(#colorLiteral(red: 0.1568627506, green: 0.6549019814, blue: 0.6901960969, alpha: 1))]),
                                             startPoint: .topLeading, endPoint: .bottomTrailing))
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        RoundImageView(image: Image(categories[index].categoryImageName))
                        Divider()
                        Text(categories[index].categoryName)
                            .font(.title)
                        Divider()
                        Text(categories[index].categoryDescription)
                            .padding()
                            .multilineTextAlignment(.center)
                    }
                }
                .tag(index)
                .tabItem {
                    Image(systemName: categories[index].systemImageName)
                        .foregroundColor(.black)
                    Text(categories[index].categoryName)
                }
            }
        }
    }
}


#Preview {
    CategoryView()
}

