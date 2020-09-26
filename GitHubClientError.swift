//
// Created by 舘佳紀 on 2020/06/10.
// Copyright (c) 2020 Yoshiki Tachi. All rights reserved.
//

import Foundation

enum GitHubClientError : Error {
    case connectionError(Error)

    case responseParseError(Error)

    case apiError(GitHubAPIError)
}

