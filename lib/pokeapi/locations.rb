class Locations

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:locations]
  end

  def locations query
    return Pokeapi::query query, @endpoints[:locations], true
  end

  def locationAreas query
    return Pokeapi::query query, @endpoints[:locationAreas], true
  end

  def palParkAreas query
    return Pokeapi::query query, @endpoints[:palParkAreas]
  end

  def regions query
    return Pokeapi::query query, @endpoints[:regions]
  end
end