require 'csv'
require 'unidecoder'

module CSVImport
  def self.import()
    csv_path = File.expand_path './src/dat.csv' #alterar para data.csv
    csv_data = CSV.read(csv_path, headers: true, col_sep: ';').map(&:to_h)
    data = sanitize_columns(csv_data)

    conn = ConnectDatabase.connect
    ManageDatabase.setup_table(conn)

    data.each do |row|
      # byebug

    end

  end

  private

  def self.sanitize_columns(data)
    data.each do |row|
      row.transform_keys! do |key|
        Unidecoder.decode(key).strip.gsub(/[^a-zA-Z0-9]/, '_')
      end
    end
    data
  end
end
