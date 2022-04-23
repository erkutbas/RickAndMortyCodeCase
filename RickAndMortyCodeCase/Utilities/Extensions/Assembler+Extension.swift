//
//  Assembler+Extension.swift
//  CodeCase
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import Swinject

extension Assembler {
    
    static let sharedAssembler: Assembler = {
       
        let container = Container()
        
        let assembler = Assembler([ClientSideAssembler(),
                                   CharacterDataResponsibleAssember(),
                                   NetworkAssembler(),
                                   AppCoordinatorAssembler(),
                                   SplashViewAssembler(),
                                   MainViewAssembler()],
                                  container: container)
        return assembler
        
    }()
    
}

