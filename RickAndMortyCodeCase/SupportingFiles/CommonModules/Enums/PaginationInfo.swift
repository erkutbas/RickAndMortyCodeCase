//
//  PaginationInfo.swift
//  CodeCase
//
//  Created by Erkut Bas on 15.09.2021.
//

import Foundation

struct PaginationInfo {
    var pageNumber: Int = 0
    var fetching: Bool = false
    var nextPage: String?
    
    func checkLoadingMore() -> Bool {
        return nextPage != nil && !fetching
    }
    
    mutating func nextOffset() {
        fetching = true
    }
}
