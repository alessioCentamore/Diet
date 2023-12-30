//
//  DietModel.swift
//  Diet
//
//  Created by alessio centamore on 28/12/23.
//

import Foundation

struct Account {
    let image: String
    let name: String
}

struct Week {
    let name: String
    let image = "calendar"
}
class Selected: Identifiable, Hashable, ObservableObject {
    let id = UUID()
    @Published var isOn: Bool
    var food: String

    init(isOn: Bool = false, food: String) {
        self.isOn = isOn
        self.food = food
    }
    
    // Aggiungi questa funzione per gestire manualmente il salvataggio in UserDefaults
    func saveToUserDefaults() {
        UserDefaults.standard.set(isOn, forKey: "myBoolKey")
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: Selected, rhs: Selected) -> Bool {
        return lhs.id == rhs.id
    }
}





class Food: Identifiable, ObservableObject {
    let id = UUID()
    @Published var food: [Selected]
    let quantity: String
    let mealN: String
    
    init(food: [Selected], quantity: String, mealN: String) {
        self.food = food
        self.quantity = quantity
        self.mealN = mealN
    }
}

