//
//  PersistencyDataProtocol.swift
//  CodeCase
//
//  Created by Erkut Bas on 16.09.2021.
//

import Foundation
import RMDomainLayer

protocol PersistencyDataProtocol {
    
    func getFavoriteItems(with completion: @escaping ([Character]) -> Void)
    
    func addFavorite(with data: Character)
    
    func removeFavourite(with data: Character)
    
    func checkExists(with data: Character) -> Bool
    
}
