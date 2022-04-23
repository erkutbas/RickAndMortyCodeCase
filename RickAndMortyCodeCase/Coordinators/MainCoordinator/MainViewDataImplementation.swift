//
//  MainViewDataImplementation.swift
//  CodeCase
//
//  Created by Erkut Bas on 15.09.2021.
//

import Foundation
import RMDomainLayer

class MainViewDataImplementation: MainViewDataFormatter {
    
    private var data: RickAndMortyCharacterResponse!
    private var list: [Character] = [Character]()
    var paginationData: PaginationInfo = PaginationInfo()
    
    func getData(at index: Int) -> ContentDisplayerViewData? {
        guard index < list.count else {
            return nil
        }
        let data = list[index]
        return ContentDisplayerViewData(imageData: CustomImageViewComponentData(imageUrl: data.image ?? ""), name: data.name ?? "")
    }
    
    func getRawData(at index: Int) -> Character {
        return list[index]
    }
    
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func getNumbeOfItem(in section: Int) -> Int {
        let count = list.count
        return (paginationData.nextPage != nil) ? count + 1 : count
    }
    
    func getCount() -> Int {
        return list.count
    }
    
    func setData(with response: RickAndMortyCharacterResponse) {
        self.data = response
        self.paginationData.nextPage = data.info?.next
        self.paginationData.pageNumber += 1
        self.list.append(contentsOf: response.results ?? [])
    }
    
    func setData(with list: [Character]) {
        self.list = list
    }
    
    func refresh() {
        list.removeAll()
    }

    func getRickAndMortyCharacterRequest() -> RickAndMortyCharacterRequest {
        RickAndMortyCharacterRequest(page: paginationData.pageNumber)
    }
    
}
