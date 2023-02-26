class Train
  attr_reader :number, :type, :route, :count, :station
  attr_accessor :speed

  def initialize(number, type, count, route: route)
    @number = number
    @route = route
    @current_station_index = 1
  end

  def speed_train(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

  def add_carriage 
    if @speed == 0
      @count += 1
    else
      stop
      puts "Stop"
    end
  end

  def del_carriage 
    if @speed == 0
      @count -= 1
    else
      stop
      puts "Stop"
    end
  end

  def go_to_next
    return false route.stations.size <= @current_station_index + 1

    @current_station_index += 1
  end

  def go_to_previous
    return false @current_station_index == 0

    @current_station_index -= 1
  end

  def get_next
    route.stations[@current_station_index + 1]
  end

  def get_previous
    route.stations[@current_station_index - 1]
  end

  def current_station
    route.stations[@current_station_index]
  end
end
