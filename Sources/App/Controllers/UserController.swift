//
//  UserController.swift
//  App
//
//  Created by 张行 on 2019/9/20.
//

import Vapor

class UserController {
    func filterUserNameList(_ request:Request) throws -> Future<[User]> {
        return try request.content.decode(User.self).flatMap{ user in
            return User.query(on: request).filter(\.userName, .equal, user.userName).all()
        }
    }
    
    func login(_ req:Request) throws -> Future<User?> {
        return try req.content.decode(User.self).flatMap { user in
            return User.query(on: req).filter(\.userName, .equal, user.userName).filter(\.passWord, .equal, user.passWord).first()
        }
    }
    
    func register(_ req:Request) throws -> Future<User> {
        return try req.content.decode(User.self).flatMap { user in
            guard let filterUser = try? self.filterUserNameList(req) else {
                throw Abort(HTTPResponseStatus(statusCode: 1, reasonPhrase: "用户已经存在!"))
            }
            return filterUser.flatMap { users in
                if users.count > 0 {
                    throw Abort(HTTPResponseStatus(statusCode: 1, reasonPhrase: "用户已经存在!"))
                } else {
                    return user.save(on: req)
                }
            }
        }
    }
    
    func save(_ req:Request) throws -> Future<User> {
        return try req.content.decode(User.self).flatMap{ user in
            return user.save(on: req)
        }
    }
}
