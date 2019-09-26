//
//  User.swift
//  App
//
//  Created by 张行 on 2019/9/20.
//

import FluentPostgreSQL
import Vapor

struct User: PostgreSQLModel {
    var id:Int?
    var userName:String
    var passWord:String
    var appleID:String?
    var name:String?
    var appleEmail:String?
}

extension User : Migration {}
extension User : Parameter {}
extension User : Content {}


struct UserResponse<M:PostgreSQLModel> : Content {
    var state:Int
    var message:String
    var data:M?
}

struct AppleLogin : Content {
    var appleId:String
    var name:String
    var appleEmail:String
    var identityToken:String
    var authCode:String
    var userID:Int?
}

struct AppleLoginRedirectContent : Content {
    var code:String?
    var id_token:String?
    var state:String?
    var user:User?
    struct User : Content {
        struct Name : Content {
            var firstName:String
            var lastName:String
        }
        var name:Name
        var email:String
    }
}


