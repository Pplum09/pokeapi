class Games

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:games]
  end

  def generations query
    return Pokeapi::query query, @endpoints[:generations]
  end

  def pokedexes query
    return Pokeapi::query query, @endpoints[:pokedexes]
  end

  def versions query
    return Pokeapi::query query, @endpoints[:versions]
  end

  def versionGroups query
    return Pokeapi::query query, @endpoints[:versionGroups]
  end
end