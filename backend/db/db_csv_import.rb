require 'csv'
require 'unidecoder'
require_relative 'db_init'

module CSVImport
  def self.import(csv_path)
    csv_data = CSV.read(csv_path, headers: true, col_sep: ';').map(&:to_h)
    data = sanitize_columns(csv_data)

    DB.init

    # data.each do |row|

    # end

  end

  private

  def self.sanitize_columns(data)
    data.each do |row|
      row.transform_keys! do |key|
        Unidecoder.decode(key).strip.gsub(/[^a-zA-Z0-9]/, '_').to_sym
      end
    end
    data
  end

end
