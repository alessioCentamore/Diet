//
//  DietApp.swift
//  Diet
//
//  Created by alessio centamore on 28/12/23.
//

import SwiftUI



@main
struct DietApp: App {
    @StateObject private var settings = Selected(food: "")
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(settings)
        }
    }
}
