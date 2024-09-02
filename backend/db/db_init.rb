require_relative 'db_conn'

class DB
  def self.init
    conn = DatabaseConnection.connect
    query = " SELECT NOW() "
    conn.exec(query)
  end
end
