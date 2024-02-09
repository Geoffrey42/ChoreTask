//
//  ChoreTask.swift
//  ChoresRace
//
//  Created by Geoffrey Gane on 28/01/2024.
//

import SwiftUI

struct ChoreTask: View {
    var chore: ChoreTaskModel
    
    var body: some View {
        HStack {
            HStack {
                Text(chore.label)
                Spacer()
                Text("\(chore.points)")
            }
            .padding(EdgeInsets(top: 20, leading: 50, bottom: 20, trailing: 50))
            .border(.black, width: 4)
        }
        .padding(20)
    }
}

//#Preview {
//    var chores: [ChoreTaskModel] = load("my_chores.json")
//    ChoreTask(chore: chores[0])
//}
