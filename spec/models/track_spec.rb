require 'rails_helper'

RSpec.describe Track, type: :model do
  context 'validation tests' do

      driver = Driver.new(id: '1', name: 'Tom', surname: 'Green')

    it 'ensure driver id presence' do
      track = Track.new(start: 'Berlin', destination: 'Warsaw', car: 'Volvo', distance: '100', description: 'Some text', date: '01.01.2004' ).save
      expect(track).to eq(false)
    end

    it 'ensure start presence' do
      track = Track.new(destination: 'Warsaw', car: 'Volvo', distance: '600', driver_id: '1', description: 'Some text', date: '01.01.2004').save
      expect(track).to eq(false)
    end

    it 'ensure destination presence' do
      track = Track.new(start: 'Warsaw', car: 'Volvo', distance: '600', driver_id: '1', description: 'Some text', date: '01.01.2004').save
      expect(track).to eq(false)
    end

    it 'ensure distance presence' do
      track1 = Track.new(start: 'Berlin', destination: 'Warsaw', driver_id: '1', description: 'Some text', date: '01.01.2004').save
      expect(track1).to eq(false)
    end

    it 'ensure distance greater then ZERO' do
      track1 = Track.new(start: 'Berlin', destination: 'Warsaw', car: 'Volvo', distance: '-5', driver_id: '1', description: 'Some text', date: '01.01.2004').save
      track2 = Track.new(start: 'Berlin', destination: 'Warsaw', car: 'Volvo', distance: '0', driver_id: '1', description: 'Some text', date: '01.01.2004' ).save
      track3 = Track.new(start: 'Berlin', destination: 'Warsaw', car: 'Volvo', distance: '100', driver_id: '1', description: 'Some text', date: '01.01.2004').save
      expect(track1).to eq(false)
      expect(track2).to eq(false)
      expect(track3).to eq(true)
    end

    it 'ensure date from future' do
      track = Track.new(start: 'Berlin', destination: 'Warsaw', car: 'Volvo', distance: '100', driver_id: '1', description: 'Some text', date: Date.today+1.day ).save
      expect(track).to eq(false)
    end

    it 'should save successfully' do
      track = Track.new(start: 'Berlin', destination: 'Warsaw', car: 'Volvo', distance: '100', driver_id: '1', description: 'Some text', date: '01.01.2004')
      expect(track).to be_valid
    end

  end

  context 'scope tests' do end

end
