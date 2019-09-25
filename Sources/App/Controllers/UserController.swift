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
    
    func login(_ req:Request) throws -> Future<UserResponse<User>> {
        return try req.content.decode(User.self).flatMap(to:UserResponse<User>.self) { user in
            let userFuture = User.query(on: req).filter(\.userName, .equal, user.userName).filter(\.passWord, .equal, user.passWord).first()
            return userFuture.flatMap(to:UserResponse<User>.self) { user in
                guard let user = user else {
                    let response = UserResponse<User>(state: 10002, message: "用户名或者密码错误", data: nil)
                    return req.eventLoop.newSucceededFuture(result: response)
                }
                let response = UserResponse<User>(state: 0, message: "登录成功", data: user)
                return req.eventLoop.newSucceededFuture(result: response)
            }
        }
    }
    
    func register(_ req:Request) throws -> Future<UserResponse<User>> {
        return try req.content.decode(User.self).flatMap(to:UserResponse<User>.self) { user in
            guard let filterUsers = try? self.filterUserNameList(req) else {
                let response = UserResponse<User>(state: 10000, message: "数据库查询出错！", data: nil)
                return req.eventLoop.newSucceededFuture(result: response)
            }
            return filterUsers.flatMap(to:UserResponse<User>.self) { users in
                if users.count > 0 {
                    let response = UserResponse<User>(state: 10001, message: "注册的用户名已经存在！", data: nil)
                    return req.eventLoop.newSucceededFuture(result: response)
                } else {
                    return user.save(on: req).flatMap(to:UserResponse<User>.self) { user in
                        let response = UserResponse<User>(state: 0, message: "注册成功", data: user)
                        return req.eventLoop.newSucceededFuture(result: response)
                    }
                }
            }
        }
    }
    
    func bindAppleID(_ req:Request) throws -> Future<UserResponse<User>> {
        return try req.content.decode(AppleLogin.self).flatMap(to: UserResponse<User>.self) { appleLogin in
            let userFuture = User.query(on: req).filter(\.id, .equal, appleLogin.userID).first()
            return userFuture.flatMap(to: UserResponse<User>.self) { user in
                guard var user = user else {
                    let response = UserResponse<User>(state: 10003, message: "用户不存在", data: nil)
                    return req.eventLoop.newSucceededFuture(result: response)
                }
                user.appleID = appleLogin.appleId
                user.appleEmail = appleLogin.appleEmail
                user.name = appleLogin.name
                return user.update(on: req).map(to: UserResponse<User>.self) { user in
                    let response = UserResponse<User>(state: 0, message: "绑定成功", data:  user)
                    return response
                }
            }
        }
    }
    
    func cancelAppleID(_ req:Request) throws -> Future<UserResponse<User>> {
        let userID = try req.parameters.next(Int.self)
        let userFuture = User.query(on: req).filter(\.id, .equal, userID).first()
        return userFuture.flatMap(to: UserResponse<User>.self) { user in
            guard var user = user else {
                let response = UserResponse<User>(state: 10003, message: "用户不存在", data: nil)
                return req.eventLoop.newSucceededFuture(result: response)
            }
            user.appleID = nil
            user.appleEmail = nil
            user.name = nil
            return user.update(on: req).map(to: UserResponse<User>.self) { user in
                let response = UserResponse<User>(state: 0, message: "解除绑定成功", data:  user)
                return response
            }
        }
    }
    
    func loginWithAppleID(_ req:Request) throws -> Future<UserResponse<User>> {
        return try req.content.decode(AppleLogin.self).flatMap(to: UserResponse<User>.self) { appleUser in
            // 查询用户是否已经绑定
            let userFuture = User.query(on: req).filter(\.appleID, .equal, appleUser.appleId).first()
            return userFuture.flatMap(to: UserResponse<User>.self) { user in
                if let user = user {
                    let response = UserResponse<User>(state: 0, message: "登录成功", data:  user)
                    return req.eventLoop.newSucceededFuture(result: response)
                } else {
                    // 标识用户不存在
                    let user = User(id: nil, userName: appleUser.appleEmail, passWord: "123456", appleID: appleUser.appleId, name: appleUser.name, appleEmail: appleUser.appleEmail)
                    return user.save(on: req).map(to: UserResponse<User>.self) { user in
                        let response = UserResponse<User>(state: 0, message: "登录成功", data:  user)
                        return response
                    }
                }
            }
        }
    }
    
    func testLogin(_ req:Request) throws -> Future<UserResponse<User>> {
        return try req.content.decode(User.self).flatMap(to: UserResponse<User>.self) { user in
            let client = try req.client()
            return client.post("https://apple-login-server.herokuapp.com/user/login") { post in
                try post.content.encode(user)
            }.flatMap(to: UserResponse<User>.self) { rep in
                if let response = try? rep.content.decode(UserResponse<User>.self) {
                    return response
                }
                let response = UserResponse<User>(state: 0, message: "登录", data:  user)
                return req.eventLoop.newSucceededFuture(result: response)
            }
        }
    }
    
    func appleLoginRedirect(_ req:Request) throws -> Future<AppleLoginRedirectContent> {
        return try req.content.decode(AppleLoginRedirectContent.self)
    }
}
