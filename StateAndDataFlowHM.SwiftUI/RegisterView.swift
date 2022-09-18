//
//  RegisterView.swift
//  StateAndDataFlowHM.SwiftUI
//
//  Created by Вадим Гамзаев on 18.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @StateObject private var dataManager = DataManager()
    @State private var name = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text(name.length.formatted())
                    .foregroundColor(self.name.length >= 3 ? .green : .red)
            }.padding([.leading, .trailing], 20)
            Button(action: registerUser) {
                    HStack {
                        Image(systemName: "checkmark.circle")
                        Text("OK")
                    }
                    .foregroundColor(self.name.length >= 3 ? .blue : .gray)

            }
        }
        .onAppear {
            let name = dataManager.getName()
            if !name.isEmpty {
                user.name = name
                user.isRegister.toggle()
            }
        }
    }
    
    private func registerUser() {
        guard self.name.length >= 3 else { return }
        
        if !name.isEmpty {
            dataManager.saveName(name: name)
            user.name = name
            user.isRegister.toggle()
        }
    }
}

extension String {
    var length: Int { return self.count }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

