//
// Created by 舘佳紀 on 2020/06/10.
// Copyright (c) 2020 Yoshiki Tachi. All rights reserved.
//

import Foundation

struct GitHubAPIError : Decodable, Error {

   struct FieldError : Decodable {
       let resource : String
       let field : String
       let code : String
   }

    let message : String
    let fieldError : [FieldError]
}