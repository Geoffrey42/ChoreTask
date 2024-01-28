//
//  ChoreTaskList.swift
//  ChoresRace
//
//  Created by Geoffrey Gane on 28/01/2024.
//

import SwiftUI

struct ChoreTaskList: View {
    var body: some View {
        List(chores) { chore in
            ChoreTask(chore: chore)
        }
    }
}

#Preview {
    ChoreTaskList()
}
