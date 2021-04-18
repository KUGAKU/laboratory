//
//  laboratoryApp.swift
//  laboratoryWatch WatchKit Extension
//
//  Created by 山本学 on 2021/04/18.
//

import SwiftUI

@main
struct laboratoryApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
