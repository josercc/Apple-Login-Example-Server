import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req  in
        return try req.view().render("index.leaf")
    }
    
    
    let userController = UserController()
    router.post("user","register", use: userController.register)
    router.post("user","login", use: userController.login)
    router.post("user","bindAppleID", use: userController.bindAppleID)
    router.post("user","cancelBindAppleID",Int.parameter, use: userController.cancelAppleID)
    router.post("user","loginWithAppleID", use: userController.loginWithAppleID)
    router.post("user","test", use: userController.testLogin)
    router.get("apple","login", use: userController.appleLoginRedirect)
}
