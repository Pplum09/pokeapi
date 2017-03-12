# notes:
# what do we do if they search for a pokemon that doesnt exist?
# should gems raise exceptions

# config setup
require 'rest-client'
require 'json'
require 'pokeapi/berries'
require 'pokeapi/contests'
require 'pokeapi/encounters'
require 'pokeapi/evolution'
require 'pokeapi/games'
require 'pokeapi/items'
require 'pokeapi/machines'
require 'pokeapi/moves'
require 'pokeapi/locations'
require 'pokeapi/pokemon'
require 'pokeapi/utility'

module Pokeapi

  BASEURL = 'http://pokeapi.co/api'
  APIVERSION = '/v2'

  # most of these endpoints take id or string unless otherwise marked
  ENDPOINTS = {
    :berries => {
      :berries => '/berry',
      :berryFirmnesses => '/berry-firmness',
      :berryFlavors => '/berry-flavor'
    },
    :contests => {
      :contestTypes => '/contest-type',
      :contestEffects => '/contest-effect', # only id
      :superContestEffects => '/super-contest-effect' # only id
    },
    :encounters => {
      :encounterMethods => '/encounter-method',
      :encounterConditions => '/encounter-condition',
      :encounterConditionValues => '/encounter-condition-value'
    },
    :evolution => {
      :evolutionChains => '/evolution-chain', # only id
      :evolutionTriggers => '/evolution-trigger'
    },
    :games => {
      :generations => '/generation',
      :pokedexes => '/pokedex',
      :versions => '/version',
      :versionGroups => '/version-group'
    },
    :items => {
      :items => '/item',
      :itemAttributes => '/item-attribute',
      :itemCategories => '/item-category',
      :itemFlingEffects => '/item-fling-effect',
      :itemPockets => '/item-pocket'
    },
    :machines => {
      :machines => '/machine' # only id
    },
    :moves => {
      :moves => '/move',
      :moveAilments => '/move-ailment',
      :moveBattleStyles => '/move-battle-style',
      :moveCategories => '/move-category',
      :moveDamageClasses => '/move-damage-class',
      :moveLearnMethods => '/move-learn-method',
      :moveTargets => '/move-target'
    },
    :locations => {
      :locations => '/location', # only id
      :locationAreas => '/location-area', # only id
      :palParkAreas => '/pal-park-area',
      :regions => '/region'
    },
    :pokemon => {
      :abilities => '/ability',
      :characteristics => '/characteristic', # only id
      :eggGroups => '/egg-group',
      :genders => '/gender',
      :growthRates => '/growth-rate',
      :natures => '/nature',
      :pokeathlonStats => '/pokeathlon-stat',
      :pokemon => '/pokemon',
      :pokemonColors => '/pokemon-color',
      :pokemonForms => '/pokemon-form',
      :pokemonHabitats => '/pokemon-habitat',
      :pokemonShapes => '/pokemon-shape',
      :pokemonSpecies => '/pokemon-species',
      :stats => '/stat',
      :types => '/type'
    },
    :utility => {
      :languages => '/language'
    }
  }

  def self.queryValid query, idOnly
    isInt = query.is_a?(Integer)
    isStr = query.is_a?(String)
    ((!isStr && isInt) || (!idOnly && isStr && !isInt)) ? (return true) : (raise ArgumentError.new 'pokemon accepts either an integer or a string')
  rescue ArgumentError => e
    puts "An error of type #{e.class} happened, message is #{e.message}"
    #puts e.backtrace

    # what happens in a rails project when a gem returns nil?
    return nil
  end

  def self.query query, endpoint, idOnly=false
    if Pokeapi.queryValid query, idOnly
      query = BASEURL + APIVERSION + endpoint + '/' + query.to_s
      return JSON.parse RestClient.get(query).body, :symbolize_names => true
    end
  end

end
