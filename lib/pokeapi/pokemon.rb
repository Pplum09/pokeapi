class Pokemon

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:pokemon]
  end

  def abilities query
    return Pokeapi::query query, @endpoints[:abilities]
  end
  def characteristics query
    return Pokeapi::query query, @endpoints[:characteristics], true
  end
  def eggGroups query
    return Pokeapi::query query, @endpoints[:eggGroups]
  end
  def genders query
    return Pokeapi::query query, @endpoints[:genders]
  end
  def growthRates query
    return Pokeapi::query query, @endpoints[:growthRates]
  end
  def natures query
    return Pokeapi::query query, @endpoints[:natures]
  end
  def pokeathlonStats query
    return Pokeapi::query query, @endpoints[:pokeathlonStats]
  end
  def pokemon query
    return Pokeapi::query query, @endpoints[:pokemon]
  end
  def pokemonColors query
    return Pokeapi::query query, @endpoints[:pokemonColors]
  end
  def pokemonForms query
    return Pokeapi::query query, @endpoints[:pokemonForms]
  end
  def pokemonHabitats query
    return Pokeapi::query query, @endpoints[:pokemonHabitats]
  end
  def pokemonShapes query
    return Pokeapi::query query, @endpoints[:pokemonShapes]
  end
  def pokemonSpecies query
    return Pokeapi::query query, @endpoints[:pokemonSpecies]
  end
  def stats query
    return Pokeapi::query query, @endpoints[:stats]
  end
  def types query
    return Pokeapi::query query, @endpoints[:types]
  end
end