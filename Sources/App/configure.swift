import FluentPostgreSQL
import Vapor
import Leaf

/// Called before your application initializes.
public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
    // Register providers first
    try services.register(FluentPostgreSQLProvider())

    // Register routes to the router
    let router = EngineRouter.default()
    try routes(router)
    services.register(router, as: Router.self)
    
   config.prefer(LeafRenderer.self, for: ViewRenderer.self)

    // Register middleware
    var middlewares = MiddlewareConfig() // Create _empty_ middleware config
    middlewares.use(FileMiddleware.self) // Serves files from `Public/` directory
    middlewares.use(ErrorMiddleware.self) // Catches errors and converts to HTTP response
    services.register(middlewares)
    let postgresqlConfig:PostgreSQLDatabaseConfig
    if let url = Environment.get("DATABASE_URL") {
        postgresqlConfig = PostgreSQLDatabaseConfig(url: url)!
    } else {
        postgresqlConfig = PostgreSQLDatabaseConfig(hostname: "127.0.0.1", port: 5432, username: "postgres", database: "apple_login", password: "1990823", transport: .cleartext)
    }
    let postgres = PostgreSQLDatabase(config: postgresqlConfig)

    // Register the configured SQLite database to the database config.
    var databases = DatabasesConfig()
    databases.add(database: postgres, as: .psql)
    services.register(databases)

    var migrations = MigrationConfig()
    migrations.add(model: Todo.self, database: .psql)
    migrations.add(model: User.self, database: .psql)
    services.register(migrations)
}
