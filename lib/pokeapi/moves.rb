class Moves

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:moves]
  end

  def moves query
    return Pokeapi::query query, @endpoints[:moves]
  end

  def moveAilments query
    return Pokeapi::query query, @endpoints[:moveAilments]
  end

  def moveBattleStyles query
    return Pokeapi::query query, @endpoints[:moveBattleStyles]
  end

  def moveCategories query
    return Pokeapi::query query, @endpoints[:moveCategories]
  end

  def moveDamageClasses query
    return Pokeapi::query query, @endpoints[:moveDamageClasses]
  end

  def moveLearnMethods query
    return Pokeapi::query query, @endpoints[:moveLearnMethods]
  end

  def moveTargets query
    return Pokeapi::query query, @endpoints[:moveTargets]
  end
end