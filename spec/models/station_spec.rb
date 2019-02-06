require 'rails_helper'

describe Station do
  it 'exists' do
    attributes = {}
    station = Station.new(attributes)
    
    expect(station).to be_a(Station)
  end
  it 'has attributes' do
    attributes = {
      name: 'Station 1',
      address: '1700 Sherman Street',
      fuel_types: 'ELEC',
      distance: 2,
      access_times: 'MO: 12:00am-12:00am; TU: 12:00am-12:00am; WE: 12:00am-12:00am; TH: 12:00am-12:00am; FR: 12:00am-12:00am; SA: 12:00am-12:00am; SU: 12:00am-12:00am'
    }
    station = Station.new(attributes)
    
    expect(station.name).to eq('Station 1')
    expect(station.address).to eq('1700 Sherman Street')
    expect(station.fuel_types).to eq('ELEC')
    expect(station.distance).to eq(2)
    expect(station.access_times).to eq('MO: 12:00am-12:00am; TU: 12:00am-12:00am; WE: 12:00am-12:00am; TH: 12:00am-12:00am; FR: 12:00am-12:00am; SA: 12:00am-12:00am; SU: 12:00am-12:00am')
  end
end