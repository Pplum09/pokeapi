class Evolution

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:evolution]
  end

  def evolutionChains query
    return Pokeapi::query query, @endpoints[:evolutionChains], true
  end

  def evolutionTriggers query
    return Pokeapi::query query, @endpoints[:evolutionTriggers]
  end
end