//
// Created by 舘佳紀 on 2020/06/10.
// Copyright (c) 2020 Yoshiki Tachi. All rights reserved.
//

import Foundation


//リクエストがどのAPIに属しているのかわかりやすく説明している

final class GitHubAPI {
    struct SearchRepositories : GitHubRequest {
        let keywords : String

        typealias Response = SearchResponse<Repository>

        var method : HTTPMethod {
            return .get
        }

        var path: String {
            return "/search/repositories"
        }
        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keywords)]
        }
    }

    struct SearchUsers : GitHubRequest {
        let keywords : String

        typealias Response = SearchResponse<User>

        var method: HTTPMethod {
            .get
        }

        var path: String {
            return "/search/users"
        }

        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keywords)]
        }

    }
}