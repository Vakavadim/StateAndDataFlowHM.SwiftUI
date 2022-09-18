//
//  UserManager.swift
//  StateAndDataFlowHM.SwiftUI
//
//  Created by Вадим Гамзаев on 18.09.2022.
//

import Foundation

class UserManager: ObservableObject {
    
    @Published var isRegister = false
    var name = ""
}
