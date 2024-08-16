require 'spec_helper'

RSpec.describe 'Configura banco de dados' do
  it 'com sucesso' do
    conn = DatabaseConnection.connect()

    expect(conn.host).to eq 'ctn_database'
    expect(conn.user).to eq 'db_user'
  end
end
