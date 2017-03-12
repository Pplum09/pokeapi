require 'spec_helper'

describe 'Querying Machines endpoint' do

  before do
    @client = Machines.new
  end

  context 'when given integer' do
    it 'machine should return data' do
      expect(@client.machines 1).not_to eq nil
    end
  end

  context 'when given string' do
    it 'machine should return nil' do
      expect(@client.machines 'mew').to eq nil
    end
  end

  context 'when given float' do
    it 'machine should return nil' do
      expect(@client.machines 1.1).to eq nil
    end
  end
end