require 'rails_helper'

describe Station do
  it 'exists' do
    attributes = {}
    station = Station.new(attributes)
    
    expect(station).to be_a(Station)
  end
  it 'has attributes' do
    attributes = {
      station_name: 'Station 1',
      street_address: '1700 Sherman Street',
      fuel_type_code: 'ELEC',
      distance: 2,
      access_days_time: 'MO: 12:00am-12:00am; TU: 12:00am-12:00am; WE: 12:00am-12:00am; TH: 12:00am-12:00am; FR: 12:00am-12:00am; SA: 12:00am-12:00am; SU: 12:00am-12:00am'
    }
    station = Station.new(attributes)
    
    expect(station.name).to eq('Station 1')
    expect(station.address).to eq('1700 Sherman Street')
    expect(station.fuel_types).to eq('ELEC')
    expect(station.distance).to eq(2)
    expect(station.access_times).to eq('MO: 12:00am-12:00am; TU: 12:00am-12:00am; WE: 12:00am-12:00am; TH: 12:00am-12:00am; FR: 12:00am-12:00am; SA: 12:00am-12:00am; SU: 12:00am-12:00am')
  end
  it 'can sort stations by distance' do
    station_1 = Station.new(distance: 3)
    station_2 = Station.new(distance: 0.5)
    station_3 = Station.new(distance: 2)
    station_4 = Station.new(distance: 1)
    
    stations = [station_1, station_2, station_3, station_4]
    sorted_stations = [station_2, station_4, station_3]
    expect(Station.sort_by_distance(stations, 3)).to eq(sorted_stations)
  end
end