class Contests

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:contests]
  end

  def contestTypes query
    return Pokeapi::query query, @endpoints[:contestTypes]
  end

  def contestEffects query
    return Pokeapi::query query, @endpoints[:contestEffects], true
  end

  def superContestEffects query
    return Pokeapi::query query, @endpoints[:superContestEffects], true
  end
end