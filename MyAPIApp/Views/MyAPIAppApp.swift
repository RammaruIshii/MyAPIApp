//
//  MyAPIAppApp.swift
//  MyAPIApp
//
//  Created by 石井蘭丸 on 2024/12/05.
//

import SwiftUI
import OpenAPIClient

@main
struct MyAPIAppApp: App {
    private let apiManager = APIManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    OpenAPIClientAPI.basePath = apiManager.getBaseURL()
                    print("OpenAPIClientAPI.basePath: \(OpenAPIClientAPI.basePath)")
                }
        }
    }
}
