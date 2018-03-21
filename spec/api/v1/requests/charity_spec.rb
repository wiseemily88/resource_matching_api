require 'rails_helper'
describe "Charity API" do
  let!(:charities) {create_list(:charity, 5)}
  let!(:charity) {create(:charity)}

  it "it sends a list of all charities" do
    charity_1 = charities.first


    get '/api/v1/charities'

    expect(response).to be_success
    expect(json.count).to eq(6)
    expect(json.first['name']).to eq(charity_1.name)

  end


  it 'retrieves a specific message' do

    get "/api/v1/charities/#{charity.id}"


    expect(response).to be_success
    expect(json['name']).to eq(charity.name)
    expect(json['address']).to eq(charity.address)
    expect(json['contact']).to eq(charity.contact)
    expect(json['website']).to eq(charity.website)

  end
end
