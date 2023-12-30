//
//  FoodView.swift
//  Diet
//
//  Created by alessio centamore on 28/12/23.
//

import SwiftUI

struct FoodView: View {
    @ObservedObject var food: Food
   
    var body: some View {
        
            HStack{
                Spacer()
                Text(food.mealN)
                    .bold()
                    .foregroundStyle(.mint)
                Spacer()
            }
            HStack {
                Text("Scelte:")
                    .padding(10)
                    .foregroundStyle(.secondary)
                Spacer()
                Image(systemName: "\(food.quantity).circle.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        ForEach($food.food, id: \.self) { $item in
            Toggle(isOn: $item.isOn) {
                Text(item.food)
            }
            .onTapGesture {
                
            }
        }




        
    }
}

#Preview {
    FoodView(food: Food(food: [Selected(isOn: false, food: "pasta")], quantity: "1", mealN: "primo"))
                .environmentObject(Food(food: [Selected(isOn: false, food: "pasta")], quantity: "1", mealN: "primo"))
}
