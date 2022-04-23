//
//  PersistencyDataManager.swift
//  CodeCase
//
//  Created by Erkut Bas on 16.09.2021.
//

import Foundation
import RMDomainLayer

struct PersistencyContainer: Codable {
    let data: [Character]
}

class PersistencyDataManager: PersistencyDataProtocol {
    
    static let KEY = "FavouriteCharacters"
    
    private let queue = DispatchQueue(label: "snycQueue", qos: .default)
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    func getFavoriteItems(with completion: @escaping ([Character]) -> Void) {
        queue.sync {
            completion(getList())
        }
    }
    
    func addFavorite(with data: Character) {
        queue.sync {
            var list = getList()
            list.append(data)
            saveList(with: list)
        }
    }
    
    func removeFavourite(with data: Character) {
        queue.sync {
            saveList(with: getList().filter({ $0.id != data.id }))
        }
    }
    
    func checkExists(with data: Character) -> Bool {
        queue.sync {
            return getList().contains(where: { $0.id == data.id })
        }
    }
    
    private func getList() -> [Character] {
        guard let data = UserDefaults.standard.object(forKey: PersistencyDataManager.KEY) as? Data else {
            return []
        }
        if let decodedData = try? decoder.decode(PersistencyContainer.self, from: data) {
            return decodedData.data
        }
        return []
    }
    
    private func saveList(with data: [Character]) {
        let data = PersistencyContainer(data: data)
        if let encodedData = try? encoder.encode(data) {
            UserDefaults.standard.set(encodedData, forKey: PersistencyDataManager.KEY)
        }
    }
    
}
