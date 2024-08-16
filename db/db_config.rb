require 'pg'
require_relative 'credentials'

class DatabaseConnection
  def self.connect
    PG.connect(DEFAULT_CREDENTIALS)
  end
end
