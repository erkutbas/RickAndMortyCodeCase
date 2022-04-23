//
//  ItemCollectionComponentDelegate.swift
//  CodeCase
//
//  Created by Erkut Bas on 15.09.2021.
//

import Foundation

protocol ItemCollectionComponentDelegate: AnyObject {
    
    func getNumberOfSection() -> Int
    func getItemCount(in section: Int) -> Int
    func getData(at index: Int) -> GenericDataProtocol?
    func getMoreData()
    func isLoadingCell(for index: Int) -> Bool
    func refreshCollectionView()
    
}

extension ItemCollectionComponentDelegate {
    
    func refreshCollectionView() { }
    
}
