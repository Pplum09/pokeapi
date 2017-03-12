require 'spec_helper'

describe 'Querying Pokemon endpoint' do

  before do
    @client = Pokemon.new
  end

  context 'when given integer' do
    it 'abilities should return data' do
      expect(@client.abilities 1).not_to be nil
    end

    it 'characteristics should return data' do
      expect(@client.characteristics 1).not_to be nil
    end

    it 'eggGroups should return data' do
      expect(@client.eggGroups 1).not_to be nil
    end

    it 'genders should return data' do
      expect(@client.genders 1).not_to be nil
    end

    it 'growthRates should return data' do
      expect(@client.growthRates 1).not_to be nil
    end

    it 'natures should return data' do
      expect(@client.natures 1).not_to be nil
    end

    it 'pokeathlonStats should return data' do
      expect(@client.pokeathlonStats 1).not_to be nil
    end

    it 'pokemon should return data' do
      expect(@client.pokemon 1).not_to be nil
    end

    it 'pokemonColors should return data' do
      expect(@client.pokemonColors 1).not_to be nil
    end

    it 'pokemonForms should return data' do
      expect(@client.pokemonForms 1).not_to be nil
    end

    it 'pokemonHabitats should return data' do
      expect(@client.pokemonHabitats 1).not_to be nil
    end

    it 'pokemonShapes should return data' do
      expect(@client.pokemonShapes 1).not_to be nil
    end

    it 'pokemonSpecies should return data' do
      expect(@client.pokemonSpecies 1).not_to be nil
    end

    it 'stats should return data' do
      expect(@client.stats 1).not_to be nil
    end

    it 'types should return data' do
      expect(@client.types 1).not_to be nil
    end
  end

  context 'when given string' do
    it 'abilities should return data' do
      expect(@client.abilities 'stench').not_to be nil
    end

    it 'characteristics should return nil' do
      expect(@client.characteristics 'bulbasaur').to be nil
    end

    it 'eggGroups should return data' do
      expect(@client.eggGroups 'monster').not_to be nil
    end

    it 'genders should return data' do
      expect(@client.genders 'female').not_to be nil
    end

    it 'growthRates should return data' do
      expect(@client.growthRates 'slow').not_to be nil
    end

    it 'natures should return data' do
      expect(@client.natures 'bold').not_to be nil
    end

    it 'pokeathlonStats should return data' do
      expect(@client.pokeathlonStats 'speed').not_to be nil
    end

    it 'pokemon should return data' do
      expect(@client.pokemon 'bulbasaur').not_to be nil
    end

    it 'pokemonColors should return data' do
      expect(@client.pokemonColors 'black').not_to be nil
    end

    it 'pokemonForms should return data' do
      expect(@client.pokemonForms 'wormadam-plant').not_to be nil
    end

    it 'pokemonHabitats should return data' do
      expect(@client.pokemonHabitats 'cave').not_to be nil
    end

    it 'pokemonShapes should return data' do
      expect(@client.pokemonShapes 'ball').not_to be nil
    end

    it 'pokemonSpecies should return data' do
      expect(@client.pokemonSpecies 'wormadam').not_to be nil
    end

    it 'stats should return data' do
      expect(@client.stats 'attack').not_to be nil
    end

    it 'types should return data' do
      expect(@client.types 'ground').not_to be nil
    end
  end

  context 'when given float' do
    it 'abilities should return nil' do
      expect(@client.abilities 1.1).to be nil
    end

    it 'characteristics should return nil' do
      expect(@client.characteristics 1.1).to be nil
    end

    it 'eggGroups should return nil' do
      expect(@client.eggGroups 1.1).to be nil
    end

    it 'genders should return nil' do
      expect(@client.genders 1.1).to be nil
    end

    it 'growthRates should return nil' do
      expect(@client.growthRates 1.1).to be nil
    end

    it 'natures should return nil' do
      expect(@client.natures 1.1).to be nil
    end

    it 'pokeathlonStats should return nil' do
      expect(@client.pokeathlonStats 1.1).to be nil
    end

    it 'pokemon should return nil' do
      expect(@client.pokemon 1.1).to be nil
    end

    it 'pokemonColors should return nil' do
      expect(@client.pokemonColors 1.1).to be nil
    end

    it 'pokemonForms should return nil' do
      expect(@client.pokemonForms 1.1).to be nil
    end

    it 'pokemonHabitats should return nil' do
      expect(@client.pokemonHabitats 1.1).to be nil
    end

    it 'pokemonShapes should return nil' do
      expect(@client.pokemonShapes 1.1).to be nil
    end

    it 'pokemonSpecies should return nil' do
      expect(@client.pokemonSpecies 1.1).to be nil
    end

    it 'stats should return nil' do
      expect(@client.stats 1.1).to be nil
    end

    it 'types should return nil' do
      expect(@client.types 1.1).to be nil
    end
  end
end