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
}

extension User : Migration {}
extension User : Parameter {}
extension User : Content {}


