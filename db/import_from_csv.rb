require 'csv'
require_relative 'db_config'

module ImportData
  def self.import_data
    conn = DatabaseConnection.connect
  end
end
