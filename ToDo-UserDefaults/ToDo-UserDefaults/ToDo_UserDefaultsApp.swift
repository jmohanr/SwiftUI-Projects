//
//  ToDo_UserDefaultsApp.swift
//  ToDo-UserDefaults
//
//  Created by Kaplan2 on 13/06/23.
//

import SwiftUI

@main
struct ToDo_UserDefaultsApp: App {
    @StateObject var listViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
