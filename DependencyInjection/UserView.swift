//
//  UserView.swift
//  DependencyInjection
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import SwiftUI

struct UserView: View {
    // Declaração de propriedade @EnvironmentObject para injetar UserService
    // Usamos @StateObject para garantir que uma única instância de UserService seja criada e injetada em UserView.
    @EnvironmentObject var userService: UserService
    var body: some View {
        VStack {
            Text("Usuários:")
            ForEach(userService.getUser(), id: \.self) { user in
                Text(user)
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
