class Train
  attr_reader :number, :type, :route, :count, :station
  attr_accessor :speed

  def initialize(number, type, count)
    @number = number
    @type = type
    @count = count
    @speed = 0
  end

  def speed_train(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

  def add_carriage #доб 1 ваг
    if @speed == 0
      @count += 1
    else
      stop
      puts "Stop"
    end
  end

  def del_carriage #уд 1 ваг
    if @speed == 0
      @count -= 1
    else
      stop
      puts "Stop"
    end
  end

  def route=(route)
    @route = route
    @station = @route.first
  end

  def next_station
    self.route.stations[self.route.stations.index(self.station) + 1]
  end

  def previous_station
    self.route.stations[self.route.stations.index(self.station) - 1]
  end

  def move_next_station #приб
    self.station = self.route.stations[self.route.stations.index(self.station) + 1]
  end

  def move_prev_station #приб
    if self.route.stations[self.route.stations.index(self.station) + 1]
    elsif self.route.stations[self.route.stations.index(self.station) - 1]
    elsif self.station = self.route.stations[self.route.stations.index(self.station) + 1]
    else
      stop
      puts "Stop"
    end
  end
end
