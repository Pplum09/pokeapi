class Berries

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:berries]
  end

  def berries query
    return Pokeapi::query query, @endpoints[:berries]
  end

  def berryFirmnesses query
    return Pokeapi::query query, @endpoints[:berryFirmnesses]
  end

  def berryFlavors query
    return Pokeapi::query query, @endpoints[:berryFlavors]
  end
end
