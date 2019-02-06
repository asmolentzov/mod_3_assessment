require 'rails_helper'

describe NrelService do
  it 'can get stations' do
    zip = 80203
    radius = 6
    service = NrelService.new
    stations = service.get_stations(zip, radius)
    
    expect(stations[:total_results]).to eq(103)
    expect(stations[:fuel_stations].count).to eq(20)
  end
end