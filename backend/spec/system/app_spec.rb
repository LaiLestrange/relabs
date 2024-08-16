require 'spec_helper'
require 'byebug'

RSpec.describe 'O App está funcionando' do
  it 'carrega a página inicial' do

    visit '/'

    byebug
    expect(page).to have_content('Hello, world! Sinatra está rodando com Puma e PostgreSQL.')
  end
end
