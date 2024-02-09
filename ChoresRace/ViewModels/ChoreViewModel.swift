//
//  ChoreViewModel.swift
//  ChoresRace
//
//  Created by Geoffrey Gane on 28/01/2024.
//

import Foundation

struct Payload: Decodable {
    var data: [ChoreTaskModel]
}

class ChoreViewModel: ObservableObject {
    @Published var chores: [ChoreTaskModel] = []

    func fetchChores() {
        guard let url = URL(string: "http://localhost:4001/api/my-completed-chores/672653ee-ef3d-425b-a0a7-47679e145118") else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else {
                print("HTTP Request Failed \(error?.localizedDescription ?? "")")
                return
            }
            
            DispatchQueue.main.async {
                do {
                    let payload = try JSONDecoder().decode(Payload.self, from: data)
                    self?.chores = payload.data
                } catch {
                    print("Decoding failed with error: \(error)")
                }
            }
        }.resume()
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)

    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()

        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
