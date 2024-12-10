//
//  Enviroment.swift
//  MyAPIApp
//
//  Created by 石井蘭丸 on 2024/12/05.
//

import Foundation

// 環境ごとのエンドポイント設定を整理
enum Environment {
    case development
    case production

    var baseURL: String {
        switch self {
        case .development:
            return "https://dev.example.com/api"
        case .production:
            return "https://prod.example.com/api"
        }
    }
}
