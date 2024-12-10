//
//  User.swift
//  MyAPIApp
//
//  Created by 石井蘭丸 on 2024/12/10.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int?
    let name: String?
    let email: String?
}
