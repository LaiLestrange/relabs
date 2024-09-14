require 'pg'

class ConnectDatabase

  def self.connect
    PG.connect(credentials)
  end

  private

  def self.credentials
    @credentials ||= {
      host: 'ctn_database',
      user: 'db_user',
      password: 'db_pass',
      dbname: 'db_name'
    }
  end
end
