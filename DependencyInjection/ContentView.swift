//
//  ContentView.swift
//  DependencyInjection
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    // Declaração de @StateObject para criar uma instância de UserService
    @StateObject var userService = UserService()

    var body: some View {
        let greetingService = DefaultGreetingService()
        let greetingViewModel = GreetingViewModel(greetingService: greetingService)

        TabView {
            GreetingView(viewModel: greetingViewModel)
                .tabItem {
                    Label("Protocol", systemImage: "car")
                }
            UserView()
                .environmentObject(userService)
                .tabItem {
                    Label("EnvironmentObject", systemImage: "bus")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
