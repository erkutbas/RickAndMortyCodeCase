//
//  CodeCaseColor.swift
//  CodeCase
//
//  Created by Erkut Bas on 15.09.2021.
//

import UIKit

enum CodeCaseColor: GenericValueProtocol {
    
    typealias Value = UIColor
    
    var value: UIColor {
        switch self {
        case .Red:
            return UIColor(named: "sample")!
//            return #colorLiteral(red: 0.7843137255, green: 0.2117647059, blue: 0.2117647059, alpha: 1)
        case .defaultBackground:
            return #colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1176470588, alpha: 1)
        }
    }
    
    case Red
    case defaultBackground
}
