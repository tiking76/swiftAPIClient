//
// Created by 舘佳紀 on 2020/06/10.
// Copyright (c) 2020 Yoshiki Tachi. All rights reserved.
//

import Foundation

struct  SearchResponse<Item : Decodable> : Decodable {
    let totalCount: Int
    let items : [Item]

    enum CodingKeys : String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
