//
//  UserViewModel.swift
//  DependencyInjection
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import Foundation

class GreetingViewModel: ObservableObject {
    @Published var greeting: String = ""

    init(greetingService: GreetingService) {
        self.greeting = greetingService.getGreeting()
    }
}
