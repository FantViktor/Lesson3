class Station
  attr_reader :name
  attr_reader :trains

  def inizialize (name)
    @name = name
    @trains = []
  end

  def return_train(train)
    self.trains << train
  end

  def trains_by_type(type)
    self.trains.each do |train|
      if train.type == type
        puts train
      end
    end
  end

  def del_train(train)
    self.trains.delete(train)
  end
end


