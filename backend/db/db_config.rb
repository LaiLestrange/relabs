require 'pg'

class DatabaseConfig
  def self.connect
    PG.connect(
      host: 'localhost',
      user: 'db_user',
      password: 'db_pass',
      dbname: 'db_name'
      )
  end
end
