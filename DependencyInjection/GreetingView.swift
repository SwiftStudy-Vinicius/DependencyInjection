//
//  UserView.swift
//  DependencyInjection
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import SwiftUI

struct GreetingView: View {

    @ObservedObject var viewModel: GreetingViewModel

    var body: some View {
        VStack {
            Text(viewModel.greeting)
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(viewModel: GreetingViewModel(greetingService: DefaultGreetingService()))
    }
}
