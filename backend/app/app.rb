require 'pg'
require_relative '../db/db_config'

def db_connection
  conn = DatabaseConfig.connect
end

get '/' do
  'Hello, world! Sinatra está rodando com Puma e PostgreSQL.'
end
