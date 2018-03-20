require 'rails_helper'
describe "Charity API" do
  let!(:charities) {create_list(:charity, 5)}

  it "it sends a list of all charities" do
    charity_1 = charities.first


    get '/api/v1/charities'

    charity_objects = JSON.parse(response.body)
    expect(response).to be_success
    expect(charity_objects.count).to eq(5)
    expect(charity_objects.first['name']).to eq(charity_1.name)

  end
end
