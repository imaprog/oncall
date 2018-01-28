require 'rails_helper'

RSpec.describe Engineer, type: :model do
  let(:engineer) { Engineer.new }

  it 'can be created successfully' do
    engineer.name = 'Shafiq'
    engineer.email = 'shafiq@gmail.com'
    engineer.card_number = 'FG2017SHAF'
    engineer.gender = "male"
    expect(engineer.save).to be true
  end

  it 'Failed to create! Name cannot be blank!' do
    engineer.name = ''
    expect(engineer.save).to be false
  end

  it 'Failed to create! Email cannot be blank!' do
  	engineer.name = 'Shafiq'
    engineer.email = ''
    expect(engineer.save).to be false
  end

  it 'Failed to create! Invalid email format!' do
  	engineer.name = 'Shafiq'
    engineer.email = 'shafiq@gmailcom'
    expect(engineer.save).to be false
  end
end
