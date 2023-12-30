//
//  Lun1Ale.swift
//  Diet
//
//  Created by alessio centamore on 28/12/23.
//

import SwiftUI

struct Lun1Ale: View {
    @EnvironmentObject var food: Food
    var body: some View {
        List{
            Section{
                FoodView(food: Food(food: [
                    Selected(food: "antipasto a scelta"),
                    Selected(food: "secondo a scelta"),
                    Selected(food: "dolce a scelta"),
                    Selected(food: "primo piatto elaborato"),
                ],
                                    quantity: "1",
                                    mealN: "Pranzo primo"))
                FoodView(food: Food(food: [
                    Selected(food: "olio di oliva"),
                    Selected(food: "verdure e ortaggi, un solo tipo, escluso patate e legumi")
                ],
                                    quantity: "2",
                                    mealN: "Pranzo secondo"))
                
            }
            Section {
                FoodView(food: Food(food: [
                    Selected(food: "riso"),
                    Selected(food: "mais o polenta"),
                    Selected(food: "pasta"),
                    Selected(food: "patate"),
                    Selected(food: "un tipo di legumi"),
                    Selected(food: "un tipo di frutta"),
                    Selected(food: "macedonia di frutta fresca")
                ],
                                    quantity: "1",
                                    mealN: "Cena primo"))
                FoodView(food: Food(food: [
                    Selected(food: "olio di oliva"),
                    Selected(food: "verdure e ortaggi misti, escluso patate e legumi, incluso salsa di pomodoro")
                ], quantity: "2",
                                    mealN: "Cena secondo"))
            }
        }
    }
}

#Preview {
    Lun1Ale()
}
