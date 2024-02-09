//
//  ChoreTaskList.swift
//  ChoresRace
//
//  Created by Geoffrey Gane on 28/01/2024.
//

import SwiftUI

struct ChoreTaskList: View {
    @ObservedObject var viewModel = ChoreViewModel()
    
    var body: some View {
        List(viewModel.chores) { chore in
            ChoreTask(chore: chore)
        }
        .onAppear {
            viewModel.fetchChores()
        }
    }
}

#Preview {
    ChoreTaskList()
}
