//
//  ChoiceView.swift
//  Meditation
//
//  Created by Alexey Dubovik on 29.12.23.
//

import SwiftUI

struct CategoryView: View {
    let categories = [CategoryModel(categoryName: "Дыхание", categoryDescription: "Дыхание - мощный инструмент для достижения расслабления и снятия стресса. Когда мы осознанно контролируем свое дыхание, мы можем оказывать влияние на наше физиологическое и эмоциональное состояние. Глубокое дыхание, осуществляемое через нос, может сигнализировать нашему организму, что мы находимся в безопасной среде. Это активирует нашу вегетативную нервную систему, вызывая реакцию расслабления.", categoryImageName: "Breathing", systemImageName: "lungs.fill"), CategoryModel(categoryName: "Медитация", categoryDescription: "Медитация - это практика осознанного присутствия и ума, которая помогает достичь глубокого расслабления и внутреннего покоя. Она позволяет нам отключиться от внешних раздражителей и углубиться в наш внутренний мир.Когда мы медитируем, мы фокусируем наше внимание на дыхании. Дыхание играет важную роль в медитации, так как оно связывает нас с моментом присутствия и помогает успокоить ум.", categoryImageName: "Meditation", systemImageName: "leaf.fill"), CategoryModel(categoryName: "Отдых", categoryDescription: "Отдых с прослушиванием фоновых звуков может стать прекрасным способом расслабиться и насладиться моментом покоя. Звуки окружающей среды имеют способность создавать атмосферу благополучия и спокойствия, помогая снизить уровень стресса и восстановить энергию. Кроме того, отдых с прослушиванием фоновых звуков может также способствовать улучшению сна и повышению концентрации.", categoryImageName: "Relax", systemImageName: "bed.double.fill")]
    
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

