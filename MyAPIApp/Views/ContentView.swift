//
//  ContentView.swift
//  MyAPIApp
//
//  Created by 石井蘭丸 on 2024/12/05.
//

import SwiftUI

struct ContentView: View {
    let apiUrl: String = "API_URL"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            if let apiUrl = Bundle.main.object(forInfoDictionaryKey: apiUrl) as? String {
                // 環境ごとにエンドポイントが出し分けできているか確認
                print("API URL: \(apiUrl)")
            }
        }
    }
}

#Preview {
    ContentView()
}
