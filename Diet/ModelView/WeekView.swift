//
//  WeekView.swift
//  Diet
//
//  Created by alessio centamore on 28/12/23.
//

import SwiftUI

struct WeekView: View {
    let week: Week
    
    var body: some View {
        
            VStack{
                Image(systemName: week.image)
                    .resizable()
                    .scaledToFit()
                Text(week.name)
            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
            
    }
}

#Preview {
    WeekView(week: Week(name: "Lunedì"))
}
