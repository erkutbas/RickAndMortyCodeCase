//
//  MainViewDataFormatter.swift
//  CodeCase
//
//  Created by Erkut Bas on 15.09.2021.
//

import Foundation
import RMDomainLayer

protocol MainViewDataFormatter {
    
    var paginationData: PaginationInfo { get set }
    
    func getRawData(at index: Int) -> Character
    
    func getData(at index: Int) -> ContentDisplayerViewData?
    
    func getNumberOfSection() -> Int
    
    func getNumbeOfItem(in section: Int) -> Int
    
    func getCount() -> Int
    
    func refresh()
    
    func setData(with response: RickAndMortyCharacterResponse)

    func getRickAndMortyCharacterRequest() -> RickAndMortyCharacterRequest

}
