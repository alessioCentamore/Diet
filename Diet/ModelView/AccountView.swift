//
//  AccountView.swift
//  Diet
//
//  Created by alessio centamore on 28/12/23.
//

import SwiftUI

struct AccountView: View {
    let accont: Account
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
            Image(accont.image)
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(accont.name)
                .textCase(.uppercase)
                .bold()
        }).frame(width: 150, height: 150)
    }
}

#Preview {
    AccountView(accont: Account(image: "vale", name: "Valentina"))
}
