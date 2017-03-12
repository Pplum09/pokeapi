require 'spec_helper'

describe 'Querying Contests endpoint' do

  before do
    @client = Contests.new
  end

  context 'when given integer' do
    it 'contestTypes should return data' do
      expect(@client.contestTypes 1).not_to eq nil
    end

    it 'contestEffects should return data' do
      expect(@client.contestEffects 1).not_to eq nil
    end

    it 'superContestEffects should return data' do
      expect(@client.superContestEffects 1).not_to eq nil
    end
  end

  context 'when given string' do
    it 'contestTypes should return data' do
      expect(@client.contestTypes 'cool').not_to eq nil
    end

    it 'contestEffects should return nil' do
      expect(@client.contestEffects 'charmander').to eq nil
    end

    it 'superContestEffects should return nil' do
      expect(@client.superContestEffects 'charmander').to eq nil
    end
  end

  context 'when given float' do
    it 'contestTypes should return nil' do
      expect(@client.contestTypes 1.1).to eq nil
    end

    it 'contestEffects should return nil' do
      expect(@client.contestEffects 1.1).to eq nil
    end

    it 'superContestEffects should return nil' do
      expect(@client.superContestEffects 1.1).to eq nil
    end
  end
end
