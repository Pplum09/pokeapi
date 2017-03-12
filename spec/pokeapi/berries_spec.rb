require 'spec_helper'

describe 'Querying Berries endpoint' do

  before do
    @client = Berries.new
  end

  context 'when given integer' do
    it 'berries should return data' do
      expect(@client.berries 1).not_to eq nil
    end

    it 'berryFirmnesses should return data' do
      expect(@client.berryFirmnesses 1).not_to eq nil
    end

    it 'berryFlavors should return data' do
      expect(@client.berryFlavors 1).not_to eq nil
    end
  end

  context 'when given string' do
    it 'berries should return data' do
      expect(@client.berries 'cheri').not_to eq nil
    end

    it 'berryFirmnesses should return data' do
      expect(@client.berryFirmnesses 'very-soft').not_to eq nil
    end

    it 'berryFlavors should return data' do
      expect(@client.berryFlavors 'spicy').not_to eq nil
    end
  end

  context 'when given float' do
    it 'berries should return nil' do
      expect(@client.berries 1.1).to eq nil
    end

    it 'berryFirmnesses should return nil' do
      expect(@client.berryFirmnesses 1.1).to eq nil
    end

    it 'berryFlavors should return nil' do
      expect(@client.berryFlavors 1.1).to eq nil
    end
  end
end