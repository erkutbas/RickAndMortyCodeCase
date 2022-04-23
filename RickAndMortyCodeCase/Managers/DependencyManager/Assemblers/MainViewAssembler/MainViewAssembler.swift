//
//  MainViewAssembler.swift
//  CodeCase
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import Swinject
import SwinjectAutoregistration
import RMDomainLayer

class MainViewAssembler: Assembly {
    
    func assemble(container: Container) {
    
        container.autoregister(MainCoordinator.self, initializer: MainCoordinator.init).inObjectScope(.container)
        container.autoregister(MainViewModel.self, initializer: MainViewModel.init).inObjectScope(.container)
        container.autoregister(MainViewDataFormatter.self, initializer: MainViewDataImplementation.init).inObjectScope(.transient)
        
        container.autoregister(CharacterListResponseCallBack.self, initializer: CharacterListResponseCallBack.init).inObjectScope(.transient)
        container.autoregister(CharacterListUseCase.self, initializer: CharacterListUseCase.init).inObjectScope(.transient)

    }
    
}
