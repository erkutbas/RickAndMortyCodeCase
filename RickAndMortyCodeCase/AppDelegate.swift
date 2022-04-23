//
//  AppDelegate.swift
//  RickAndMortyCodeCase
//
//  Created by Erkut Bas on 23.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        startAppCoordinator()

        return true
    }

    func startAppCoordinator() {
        guard let appCoordinator = returnResolver().resolve(AppCoordinator.self) else { return }
        appCoordinator.start()
    }

}

// Mark: AssemblerResolverDelegate
extension AppDelegate: AssemblerResolverDelegate {

}

