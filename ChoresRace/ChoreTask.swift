//
//  ChoreTask.swift
//  ChoresRace
//
//  Created by Geoffrey Gane on 28/01/2024.
//

import SwiftUI

struct ChoreTask: View {
    var body: some View {
        HStack {
            HStack {
                Text("Passer le balai")
                Spacer()
                Text("5")
            }
            .padding(EdgeInsets(top: 20, leading: 50, bottom: 20, trailing: 50))
        .border(.black, width: 4)
        }
        .padding(20)
    }
}

#Preview {
    ChoreTask()
}
