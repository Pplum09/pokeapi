require 'spec_helper'

describe 'Querying Evolution endpoint' do

  before do
    @client = Evolution.new
  end

  context 'when given integer' do
    it 'evolutionChains should return data' do
      expect(@client.evolutionChains 1).not_to eq nil
    end

    it 'evolutionTriggers should return data' do
      expect(@client.evolutionTriggers 1).not_to eq nil
    end
  end

  context 'when given string' do
    it 'evolutionChains should return nil' do
      expect(@client.evolutionChains 'squirtle').to eq nil
    end

    it 'evolutionTriggers should return data' do
      expect(@client.evolutionTriggers 'level-up').not_to eq nil
    end
  end

  context 'when given float' do
    it 'evolutionChains should return nil' do
      expect(@client.evolutionChains 1.1).to eq nil
    end

    it 'evolutionTriggers should return nil' do
      expect(@client.evolutionTriggers 1.1).to eq nil
    end
  end
end