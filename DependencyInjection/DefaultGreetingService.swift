//
//  DefaultGreetingService.swift
//  DependencyInjection
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import Foundation

class DefaultGreetingService: GreetingService {
    func getGreeting() -> String {
        return "Study Dependency Injection"
    }
}
