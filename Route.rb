class Route
  attr_reader :intermediate

  def inizialize(initial, final)
    @intermediate << initial
    @intermediate << final
    @intermediate = []
  end

  def add_intermediate(station)
    @intermediate.insert(-2, station)
  end

  # def del_intermediate(station)
  # self.intermediate.delete(station)
  #end

  def remove_station(station)
    self.intermediate.delete(station) unless [@intermediate.first, @intermediate.last].include?(station)
  end
end
