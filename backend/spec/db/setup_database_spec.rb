require 'spec_helper'
require_relative '../../db/db_conn'

RSpec.describe 'Configura banco de dados' do
  it 'com sucesso' do
    conn = DatabaseConnection.connect()

    expect(conn.host).to eq 'ctn_database'
    expect(conn.user).to eq 'db_user'
  end

  it 'app funcionando ' do

    visit '/'

    expect(page).to have_content 'Hello, world!'
  end
end
