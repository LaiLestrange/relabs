require 'pg'

class DatabaseConnection
  def self.connect
    credentials = {
      host: 'ctn_database',
      user: 'db_user',
      password: 'db_pass',
      dbname: 'db_name'
    }
    PG.connect(credentials)
  end
end
