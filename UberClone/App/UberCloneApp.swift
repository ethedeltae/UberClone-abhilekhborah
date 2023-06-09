//
//  UberCloneApp.swift
//  UberClone
//
//  Created by Abhilekh Borah on 04/06/23.
//

import SwiftUI

@main
struct UberCloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
            .environmentObject(locationViewModel)
            }
    }
}
