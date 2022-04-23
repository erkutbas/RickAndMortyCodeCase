//
//  CharacterDataResponsibleAssember.swift
//  CodeCase
//
//  Created by Erkut Bas on 15.09.2021.
//

import Foundation
import Swinject
import SwinjectAutoregistration
import RMDomainLayer
import RMDataLayer

class CharacterDataResponsibleAssember: Assembly {
    
    func assemble(container: Container) {
    
        container.autoregister(CharacterOperationsProtocol.self, initializer: CharacterDataRepository.init).inObjectScope(.weak)
        container.autoregister(CharacterDataApiRemoteProtocol.self, initializer: CharacterDataApiRemote.init).inObjectScope(.weak)
        container.autoregister(CharacterServiceProviderManagerProtocol.self, initializer: CharacterServiceProviderManager.init).inObjectScope(.weak)

    }
    
}
