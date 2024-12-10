//
//  ContentView.swift
//  MyAPIApp
//
//  Created by 石井蘭丸 on 2024/12/05.
//

import SwiftUI
import OpenAPIClient

struct ContentView: View {
    @StateObject private var viewModel = UserViewModel()
    private let defaultNamePlaceholder = "名前のデータなし"
    private let defaultEmailPlaceholder = "メールのデータなし"
    
    var body: some View {
        VStack {
            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            }
            
            List(viewModel.users, id: \.id) { user in
                VStack(alignment: .leading) {
                    Text(user.name ?? defaultNamePlaceholder)
                    Text(user.email ?? defaultEmailPlaceholder)
                }
            }
            .onAppear {                
                viewModel.fetchUsers()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
