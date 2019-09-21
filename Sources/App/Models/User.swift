//
//  User.swift
//  App
//
//  Created by 张行 on 2019/9/20.
//

import FluentSQLite
import Vapor

struct User: SQLiteModel {
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


struct UserResponse<M:SQLiteModel> : Content {
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
