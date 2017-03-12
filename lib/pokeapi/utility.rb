class Utility

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:utility]
  end

  def languages query
    return Pokeapi::query query, @endpoints[:languages]
  end

end