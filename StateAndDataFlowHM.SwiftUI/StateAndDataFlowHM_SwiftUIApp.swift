//
//  StateAndDataFlowHM_SwiftUIApp.swift
//  StateAndDataFlowHM.SwiftUI
//
//  Created by Вадим Гамзаев on 16.09.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager()
//    @StateObject private var dataManager = DataManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
//                .environmentObject(dataManager)
        }
    }
}
