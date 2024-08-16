require 'csv'

module CSVImport
  def self.import(csv_path)
    CSV.foreach(csv_path, headers: true) do |row|
      p row
    end

  end
end
