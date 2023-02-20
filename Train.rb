class Train
  attr_reader :number, :type, :route
  attr_accessor :station, :speed, :count

  def initialize(number, type, count)
    @number = number
    @type = type
    @count = count
    @speed = 0
  end

  def speed_train(speed)
    self.speed += speed
  end

  def stop
    self.speed = 0
  end

  def add_carriage
    if self.speed == 0
      self.count += 1
    else
      stop
      puts "Stop"
    end
  end

  def del_carriage
    if self.speed == 0
      self.count -= 1
    else
      stop
      puts "Stop"
    end
  end

  def route=(route)
    @route = route
    self.station = self.route.stations.first
  end

  def next_station
    self.route.stations[self.route.stations.index(self.station) + 1]
  end

  def previous_station
    self.route.stations[self.route.stations.index(self.station) - 1]
  end

  def move_next_station
    self.station = self.route.stations[self.route.stations.index(self.station) + 1]
  end
end
