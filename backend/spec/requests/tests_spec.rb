require 'spec_helper'

RSpec.describe 'API' do
  context 'GET /tests' do
    it 'retorna a lista de testes' do
      csv_path = File.expand_path './src/data.csv'
      CSVImport.import(csv_path)
    end
  end
end
