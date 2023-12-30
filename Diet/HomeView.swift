//
//  HomeView.swift
//  Diet
//
//  Created by alessio centamore on 28/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            Image(systemName: "fork.knife.circle")
                .resizable()
                .frame(width: 200, height: 200)
            HStack {
                NavigationLink {
                    WeekVale()
                } label: {
                    AccountView(accont: Account(image: "vale", name: "Valentina"))
            }
                NavigationLink {
                    WeekAle()
                } label: {
                    AccountView(accont: Account(image: "ale", name: "Alessio"))
            }
            }

           
        }
    }
}

#Preview {
    HomeView()
}
