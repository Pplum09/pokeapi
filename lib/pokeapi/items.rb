class Items

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:items]
  end

  def items query
    return Pokeapi::query query, @endpoints[:items]
  end

  def itemAttributes query
    return Pokeapi::query query, @endpoints[:itemAttributes]
  end

  def itemCategories query
    return Pokeapi::query query, @endpoints[:itemCategories]
  end

  def itemFlingEffects query
    return Pokeapi::query query, @endpoints[:itemFlingEffects]
  end

  def itemPockets query
    return Pokeapi::query query, @endpoints[:itemPockets]
  end
end