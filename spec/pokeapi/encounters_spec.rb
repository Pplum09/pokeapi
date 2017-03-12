require 'spec_helper'

describe 'Querying Encounters endpoint' do

  before do
    @client = Encounters.new
  end

  context 'when given integer' do
    it 'encounterMethods should return data' do
      expect(@client.encounterMethods 1).not_to eq nil
    end

    it 'encounterConditions should return data' do
      expect(@client.encounterConditions 1).not_to eq nil
    end

    it 'encounterConditionValues should return data' do
      expect(@client.encounterConditionValues 1).not_to eq nil
    end
  end

  context 'when given string' do
    it 'encounterMethods should return data' do
      expect(@client.encounterMethods 'walk').not_to eq nil
    end

    it 'encounterConditions should return data' do
      expect(@client.encounterConditions 'swarm').not_to eq nil
    end

    it 'encounterConditionValues should return data' do
      expect(@client.encounterConditionValues 'swarm-yes').not_to eq nil
    end
  end

  context 'when given float' do
    it 'encounterMethods should return nil' do
      expect(@client.encounterMethods 1.1).to eq nil
    end

    it 'encounterConditions should return nil' do
      expect(@client.encounterConditions 1.1).to eq nil
    end

    it 'encounterConditionValues should return nil' do
      expect(@client.encounterConditionValues 1.1).to eq nil
    end
  end
end