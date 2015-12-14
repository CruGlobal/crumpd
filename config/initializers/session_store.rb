# reference: https://github.com/CruGlobal/cap/blob/17bb272471532848bc51608b4039269b81145507/config/initializers/session_store.rb
require Rails.root.join('config', 'initializers', 'redis')

Rails.application.config.session_store :redis_session_store, {
  key: '_simpd_session',
  redis: {
    host: Redis.current.client.host,
    port: Redis.current.client.port,
    db: 2,
    key_prefix: "simpd:session:",
    expire_after: 1.days
  }
}
