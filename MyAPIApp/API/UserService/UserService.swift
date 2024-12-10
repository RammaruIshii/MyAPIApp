//
//  UserService.swift
//  MyAPIApp
//
//  Created by 石井蘭丸 on 2024/12/10.
//

import Foundation
import OpenAPIClient

// ViewModelから呼ばれ、データを返す
/// データの取得のみを担当する
class UserService {
    static func fetchUsers(completion: @escaping (Result<[User], Error>) -> Void) {
        DefaultAPI.usersGet { users, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            // UsersGet200ResponseInnerからUser型へ変換
            let users = users?.map { user in
                User(id: user.id, name: user.name, email: user.email)
            } ?? []
            completion(.success(users))
        }
    }
}
