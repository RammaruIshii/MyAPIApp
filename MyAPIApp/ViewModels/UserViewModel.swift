//
//  UserViewModel.swift
//  MyAPIApp
//
//  Created by 石井蘭丸 on 2024/12/10.
//

import Foundation

/// UIに関する状態管理（データ取得結果の操作・ビューに渡す）やエラーハンドリングを担当する。
class UserViewModel: ObservableObject {
    /// UIに表示するためのユーザーリスト
    @Published var users: [User] = []
    /// UIに表示するためのエラーメッセージ
    @Published var errorMessage: String?
    
    func fetchUsers() {
        UserService.fetchUsers { result in
            switch result {
            case .success(let users):
                self.users = users
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            }
        }
    }
}
