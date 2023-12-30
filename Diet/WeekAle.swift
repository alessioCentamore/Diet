//
//  WeekAle.swift
//  Diet
//
//  Created by alessio centamore on 28/12/23.
//

import SwiftUI

struct WeekAle: View {
    var body: some View {
        NavigationStack{
            HStack{
                VStack{
                    Text("Settimana 1")
                        .textCase(.uppercase)
                        .bold()
                        .foregroundStyle(.black)
                    NavigationLink {
                        Lun1Ale()
                    } label: {
                        WeekView(week: Week(name: "Lunedì"))
                    }

                    WeekView(week: Week(name: "Martedì"))
                    WeekView(week: Week(name: "Mercoledì"))
                    WeekView(week: Week(name: "Giovedì"))
                    WeekView(week: Week(name: "Venerdì"))
                    WeekView(week: Week(name: "Sabato"))
                    WeekView(week: Week(name: "Domenica"))
                }.padding()
                    .foregroundStyle(.cyan)
                VStack{
                    Text("Settimana 2")
                        .textCase(.uppercase)
                        .bold()
                        .foregroundStyle(.black)
                    WeekView(week: Week(name: "Lunedì"))
                    WeekView(week: Week(name: "Martedì"))
                    WeekView(week: Week(name: "Mercoledì"))
                    WeekView(week: Week(name: "Giovedì"))
                    WeekView(week: Week(name: "Venerdì"))
                    WeekView(week: Week(name: "Sabato"))
                    WeekView(week: Week(name: "Domenica"))
                }.padding()
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    WeekAle()
}
