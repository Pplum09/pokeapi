class Machines

  def initialize
    @url = Pokeapi::BASEURL + Pokeapi::APIVERSION
    @endpoints = Pokeapi::ENDPOINTS[:machines]
  end

  def machines query
    return Pokeapi::query query, @endpoints[:machines], true
  end
end