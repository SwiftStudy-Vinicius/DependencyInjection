//
//  ContentView.swift
//  DependencyInjection
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        let greetingService = DefaultGreetingService()
        let greetingViewModel = GreetingViewModel(greetingService: greetingService)

        GreetingView(viewModel: greetingViewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
