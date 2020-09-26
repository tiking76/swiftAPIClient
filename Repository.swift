//
// Created by 舘佳紀 on 2020/06/10.
// Copyright (c) 2020 Yoshiki Tachi. All rights reserved.
//

import Foundation

struct Repository :Decodable {
    let id : Int
    let name : String
    let fullName : String
    let owner : User

    enum CodingKeys : String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}

