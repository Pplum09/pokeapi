class Encounters

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:encounters]
  end

  def encounterMethods query
    return Pokeapi::query query, @endpoints[:encounterMethods]
  end

  def encounterConditions query
    return Pokeapi::query query, @endpoints[:encounterConditions]
  end

  def encounterConditionValues query
    return Pokeapi::query query, @endpoints[:encounterConditionValues]
  end
end