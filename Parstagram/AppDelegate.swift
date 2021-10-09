//
//  AppDelegate.swift
//  Parstagram
//
//  Created by Sid on 10/7/21.
//

import UIKit
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let parseConfig = ParseClientConfiguration {
                    $0.applicationId = "TMt4VRsrdXf8zUWgoPvhQhyWTxPnbQ8i56TaUmvH" // <- UPDATE
                    $0.clientKey = "5KEqnaEGefAoh0tdb7Q5ujgx37HHBl5RAk2csodY" // <- UPDATE
                    $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        
        
//        let api = new ParseServer({
//          ...,
//          // Make sure to define liveQuery AND classNames
//          liveQuery: {
//            // define your ParseObject names here
//            classNames: ['Post', 'Comment']
//          }
//        });
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

