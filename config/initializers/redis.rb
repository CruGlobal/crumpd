require 'redis'
require 'redis/namespace'

redis_connection = Redis.new(host: ENV.fetch('REDIS_PORT_6379_TCP_ADDR'),
                                    port: ENV.fetch('REDIS_PORT_6379_TCP_PORT'))
Redis.current = Redis::Namespace.new("simpd:#{Rails.env}", redis: redis_connection)
