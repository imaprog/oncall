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

  it "Failed to create! Email must be unique!" do
    Engineer.create!(:name=> "Sally", :email=>"sally@mail.com")
    engineer = Engineer.new(:name=> "Sally", :email=>"sally@mail.com")
    expect(engineer.save).to be false
  end

  it "Blank On Call Works data ignored!" do
    params = { engineer: {
      name: 'LULU', email: 'lulu@gmail.com', on_call_works_attributes: [
        { total_hours: '' }
      ]
    }}

    engineer = Engineer.create(params[:engineer])
    expect(engineer.on_call_works.blank?).to be true
  end

end
