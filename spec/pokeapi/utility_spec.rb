require 'spec_helper'

describe 'Querying Utility endpoint' do

  before do
    @client = Utility.new
  end

  context 'when given integer' do
    it 'languages should return data' do
      expect(@client.languages 1).not_to eq nil
    end
  end

  context 'when given string' do
    it 'languages should return data' do
      expect(@client.languages 'ja').not_to eq nil
    end
  end

  context 'when given integer' do
    it 'languages should return nil' do
      expect(@client.languages 1.1).to eq nil
    end
  end
end