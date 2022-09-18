//
//  ContentView.swift
//  StateAndDataFlowHM.SwiftUI
//
//  Created by Вадим Гамзаев on 16.09.2022.
//
// Тут будет ДЗ, но пока его нет, за ночь появится)

import SwiftUI

struct ContentView: View {
    
    @StateObject private var dataManger = DataManager()
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var user: UserManager

    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            
            ButtonView(timer: timer)
            
            Spacer()
            
            Button(action: logout) {
                Text("LogOut")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .buttonStyle(ColorButtonStyle(color: .blue))
        }
    }
    
    private func logout() {
        dataManger.logOut()
        user.isRegister = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .buttonStyle(ColorButtonStyle(color: .red))
    }
}
