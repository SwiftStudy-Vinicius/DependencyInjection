//
//  UserService.swift
//  DependencyInjection
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import Foundation

class UserService: ObservableObject {
    func getUser() -> [String] {
        return ["Alice", "Bob", "Charlie"]
    }
}
