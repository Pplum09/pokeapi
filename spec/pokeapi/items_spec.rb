require 'spec_helper'

describe 'Querying Items endpoint' do

  before do
    @client = Items.new
  end

  context 'when given integer' do
    it 'items should return data' do
      expect(@client.items 1).not_to eq nil
    end

    it 'itemAttributes should return data' do
      expect(@client.itemAttributes 1).not_to eq nil
    end

    it 'itemCategories should return data' do
      expect(@client.itemCategories 1).not_to eq nil
    end

    it 'itemFlingEffects should return data' do
      expect(@client.itemFlingEffects 1).not_to eq nil
    end

    it 'itemPockets should return data' do
      expect(@client.itemPockets 1).not_to eq nil
    end
  end

  context 'when given string' do
    it 'items should return data' do
      expect(@client.items 'master-ball').not_to eq nil
    end

    it 'itemAttributes should return data' do
      expect(@client.itemAttributes 'countable').not_to eq nil
    end

    it 'itemCategories should return data' do
      expect(@client.itemCategories 'stat-boosts').not_to eq nil
    end

    it 'itemFlingEffects should return data' do
      expect(@client.itemFlingEffects 'badly-poison').not_to eq nil
    end

    it 'itemPockets should return data' do
      expect(@client.itemPockets 'misc').not_to eq nil
    end
  end

  context 'when given float' do
    it 'items should return nil' do
      expect(@client.items 1.1).to eq nil
    end

    it 'itemAttributes should return nil' do
      expect(@client.itemAttributes 1.1).to eq nil
    end

    it 'itemCategories should return nil' do
      expect(@client.itemCategories 1.1).to eq nil
    end

    it 'itemFlingEffects should return nil' do
      expect(@client.itemFlingEffects 1.1).to eq nil
    end

    it 'itemPockets should return nil' do
      expect(@client.itemPockets 1.1).to eq nil
    end
  end

end