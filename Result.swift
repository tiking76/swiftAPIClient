//
// Created by 舘佳紀 on 2020/06/10.
// Copyright (c) 2020 Yoshiki Tachi. All rights reserved.
//

import Foundation

enum Result<T, Error : Swift.Error> {
    case success(T)
    case failure(Error)

    init(value : T) {
        self = .success(value)
    }

    init(error : Error) {
        self = .failure(error)
    }
}