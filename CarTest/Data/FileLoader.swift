//
//  FileLoader.swift
//  CarTest
//
//  Created by Bhagwat Singh on 20/05/24.
//

import Foundation

protocol FileLoader {
    func loadFile<Model: Decodable>(name: String) async throws -> Model
}

struct FileLoaderImpl: FileLoader {
    func loadFile<Model: Decodable>(name: String) async throws -> Model {

        do {
            let fileURL = Bundle.main.url(forResource: name, withExtension: "json")!
            let (data, _) = try await URLSession.shared.data(from: fileURL)

            let decoder = JSONDecoder()
            let entity = try decoder.decode(Model.self, from: data)

            return entity
        } catch {
            print("Error decoding JSON: \(error.localizedDescription)")
            throw error
        }
    }
}
