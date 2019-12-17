//
//  AppDelegate.swift
//  DublinDecoded4
//
//  Created by Garvan Gallagher on 11/12/2019.
//  Copyright © 2019 Garvan Gallagher. All rights reserved.
//

import UIKit
import ZendeskSDK
import ZendeskCoreSDK
import ZDCChat
import AnswerBotSDK
import AnswerBotProvidersSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        Zendesk.initialize(appId: "26caf02bdf66c034808752bba3f2e8794ff3f44efb61ecd4",
            clientId: "mobile_sdk_client_4ad59217cbc7eee261dc",
            zendeskUrl: "https://garvangallagher.zendesk.com")
        Support.initialize(withZendesk: Zendesk.instance)

        let ident = Identity.createAnonymous()
        Zendesk.instance?.setIdentity(ident)
        
        // Initialise Chat
        ZDCChat.initialize(withAccountKey: "bRjmEFAH0cxeZvso5C2UO8laIKGa1xzs")
        
        // Initialize Answer Bot - code from git code samples. Docs missing instantiating support
        guard let support = Support.instance else { return false }
        AnswerBot.initialize(withZendesk: Zendesk.instance, support: support)
        
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

