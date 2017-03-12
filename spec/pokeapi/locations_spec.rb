require 'spec_helper'

describe 'Querying Locations endpoint' do

  before do
    @client = Locations.new
  end

  context 'when given integer' do
    it 'locations should return data' do
      expect(@client.locations 1).not_to eq nil
    end

    it 'locationAreas should return data' do
      expect(@client.locationAreas 1).not_to eq nil
    end

    it 'palParkAreas should return data' do
      expect(@client.palParkAreas 1).not_to eq nil
    end

    it 'regions should return data' do
      expect(@client.regions 1).not_to eq nil
    end
  end

  context 'when given string' do
    it 'locations should return nil' do
      expect(@client.locations 'starmie').to eq nil
    end

    it 'locationAreas should return nil' do
      expect(@client.locationAreas 'starmie').to eq nil
    end

    it 'palParkAreas should return data' do
      expect(@client.palParkAreas 'forest').not_to eq nil
    end

    it 'regions should return data' do
      expect(@client.regions 'kanto').not_to eq nil
    end
  end

  context 'when given float' do
    it 'locations should return nil' do
      expect(@client.locations 1.1).to eq nil
    end

    it 'locationAreas should return nil' do
      expect(@client.locationAreas 1.1).to eq nil
    end

    it 'palParkAreas should return nil' do
      expect(@client.palParkAreas 1.1).to eq nil
    end

    it 'regions should return nil' do
      expect(@client.regions 1.1).to eq nil
    end
  end
end