require 'rails_helper'

RSpec.describe Engineer, type: :model do
  let(:engineer) { Engineer.new }

  it 'can be created successfully' do
    engineer.name = 'Shafiq'
    expect(engineer.save).to be true
  end

  it 'Failed to create! Name cannot be blank!' do
    engineer.name = ''
    expect(engineer.save).to be false
  end

  it "Blank Overtimes will be ignored! Must have hours & day" do
    params = { engineer: {
      name: 'LULU', overtimes_attributes: [
        { hours: '', day: '' }
      ]
    }}

    engineer = Engineer.create(params[:engineer])
    expect(engineer.overtimes.blank?).to be true
  end

end
