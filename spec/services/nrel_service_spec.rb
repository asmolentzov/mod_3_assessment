require 'rails_helper'

describe NrelService do
  it 'can get stations' do
    service = NrelService.new
    stations = service.get_stations
    
    expect(stations[:total_results]).to eq(3)
    expect(stations[:fuel_stations].count).to eq(3)
    expect(stations[:fuel_stations].count).to eq(3)
  end
end