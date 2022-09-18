//
//  StarterView.swift
//  StateAndDataFlowHM.SwiftUI
//
//  Created by Вадим Гамзаев on 18.09.2022.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject private var user: UserManager
    @EnvironmentObject private var dataManager: DataManager
    
    var body: some View {
        Group {
            if user.isRegister {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
