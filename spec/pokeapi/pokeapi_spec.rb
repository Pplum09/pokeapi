require "spec_helper"

describe Pokeapi do

  describe 'Config' do
    it "has a version number" do
      expect(Pokeapi::VERSION).not_to be nil
    end
  end
end
