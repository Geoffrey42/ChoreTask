//
//  ChoreTask.swift
//  ChoresRace
//
//  Created by Geoffrey Gane on 28/01/2024.
//

import Foundation

struct ChoreTaskModel: Hashable, Codable, Identifiable {
    var id: UUID
    var label: String
    var points: [Int]
}
