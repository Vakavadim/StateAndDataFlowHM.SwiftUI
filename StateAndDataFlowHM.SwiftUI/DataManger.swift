//
//  DataManger.swift
//  StateAndDataFlowHM.SwiftUI
//
//  Created by Вадим Гамзаев on 18.09.2022.
//

import Combine
import Foundation

class DataManager: ObservableObject {
    
    let objectWillChange = PassthroughSubject<DataManager, Never>()
    
    func saveName(name: String) {
        UserDefaults.standard.set(name, forKey: "name")
    }
    
    func getName() -> String {
        guard let name = UserDefaults.standard.string(forKey: "name") else {return ""}
        return name
    }
    
    func logOut() {
        UserDefaults.standard.set(nil, forKey: "name")
    }
}
