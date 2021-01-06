//
//  EnvironmentObjectApp.swift
//  EnvironmentObject
//
//  Created by Artyom Romanchuk on 06.01.2021.
//

import SwiftUI

@main
struct EnvironmentObjectApp: App {
    @StateObject var userSettings2 = UserSettings()
    //@SateObject var userSettings: UserSettings
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(userSettings2)
        }
    }
}
