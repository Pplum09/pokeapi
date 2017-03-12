require 'spec_helper'

describe 'Querying Moves endpoint' do

  before do
    @client = Moves.new
  end

  context 'when given integer' do
    it 'moves should return data' do
      expect(@client.moves 1).not_to eq nil
    end

    it 'moveAilments should return data' do
      expect(@client.moveAilments 1).not_to eq nil
    end

    it 'moveBattleStyles should return data' do
      expect(@client.moveBattleStyles 1).not_to eq nil
    end

    it 'moveCategories should return data' do
      expect(@client.moveCategories 1).not_to eq nil
    end

    it 'moveDamageClasses should return data' do
      expect(@client.moveDamageClasses 1).not_to eq nil
    end

    it 'moveLearnMethods should return data' do
      expect(@client.moveLearnMethods 1).not_to eq nil
    end

    it 'moveTargets should return data' do
      expect(@client.moveTargets 1).not_to eq nil
    end
  end

  context 'when given string' do
    it 'moves should return data' do
      expect(@client.moves 'pound').not_to eq nil
    end

    it 'moveAilments should return data' do
      expect(@client.moveAilments 'paralysis').not_to eq nil
    end

    it 'moveBattleStyles should return data' do
      expect(@client.moveBattleStyles 'attack').not_to eq nil
    end

    it 'moveCategories should return data' do
      expect(@client.moveCategories 'ailment').not_to eq nil
    end

    it 'moveDamageClasses should return data' do
      expect(@client.moveDamageClasses 'status').not_to eq nil
    end

    it 'moveLearnMethods should return data' do
      expect(@client.moveLearnMethods 'level-up').not_to eq nil
    end

    it 'moveTargets should return data' do
      expect(@client.moveTargets 'specific-move').not_to eq nil
    end
  end

  context 'when given float' do
    it 'moves should return nil' do
      expect(@client.moves 1.1).to eq nil
    end

    it 'moveAilments should return nil' do
      expect(@client.moveAilments 1.1).to eq nil
    end

    it 'moveBattleStyles should return nil' do
      expect(@client.moveBattleStyles 1.1).to eq nil
    end

    it 'moveCategories should return nil' do
      expect(@client.moveCategories 1.1).to eq nil
    end

    it 'moveDamageClasses should return nil' do
      expect(@client.moveDamageClasses 1.1).to eq nil
    end

    it 'moveLearnMethods should return nil' do
      expect(@client.moveLearnMethods 1.1).to eq nil
    end

    it 'moveTargets should return nil' do
      expect(@client.moveTargets 1.1).to eq nil
    end
  end
end