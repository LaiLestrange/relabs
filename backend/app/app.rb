require 'pg'
require_relative '../db/db_conn'

get '/' do
  'Hello, world! Sinatra está rodando com Puma e PostgreSQL.'
end
