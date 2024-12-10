//
//  APIManager.swift
//  MyAPIApp
//
//  Created by 石井蘭丸 on 2024/12/10.
//

import Foundation

// モックサーバー・本番・開発環境をInfo.plistから取得
// Swaggerの学習が目的のため、モックサーバー以外のサーバーは作っていない
/// info.plistによって環境（エンドポイント）を管理するクラス
class APIManager {
    private let forInfoDictionaryKey: String = "API_URL"
    
    func getBaseURL() -> String {
        guard let baseURL = Bundle.main.object(forInfoDictionaryKey: forInfoDictionaryKey) as? String else {
            fatalError("Info.plistにAPI_URLが存在しません。")
        }
        return baseURL
    }
}
