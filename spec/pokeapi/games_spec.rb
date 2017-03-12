require 'spec_helper'

describe 'Querying Games endpoint' do

  before do
    @client = Games.new
  end

  context 'when given integer' do
    it 'generations should return data' do
      expect(@client.generations 1).not_to eq nil
    end

    it 'pokedexes should return data' do
      expect(@client.pokedexes 1).not_to eq nil
    end

    it 'versions should return data' do
      expect(@client.versions 1).not_to eq nil
    end

    it 'versionGroups should return data' do
      expect(@client.versionGroups 1).not_to eq nil
    end
  end

  context 'when given string' do
    it 'generations should return data' do
      expect(@client.generations 'generation-i').not_to eq nil
    end

    it 'pokedexes should return data' do
      expect(@client.pokedexes 'kanto').not_to eq nil
    end

    it 'versions should return data' do
      expect(@client.versions 'red').not_to eq nil
    end

    it 'versionGroups should return data' do
      expect(@client.versionGroups 'red-blue').not_to eq nil
    end
  end

  context 'when given float' do
    it 'generations should return nil' do
      expect(@client.generations 1.1).to eq nil
    end

    it 'pokedexes should return nil' do
      expect(@client.pokedexes 1.1).to eq nil
    end

    it 'versions should return nil' do
      expect(@client.versions 1.1).to eq nil
    end

    it 'versionGroups should return nil' do
      expect(@client.versionGroups 1.1).to eq nil
    end
  end
end