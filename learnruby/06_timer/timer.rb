class Timer
  @time = 0
  @time_string = ""
  def initialize(t=0)
    @time = t
    update_time_string()
  end
  def seconds
    return @time
  end
  def seconds=(value)
    @time = value
    update_time_string()
  end
  def minutes
    return @time / 60
  end
  def minutes=(value)
    @time = 60*value
    update_time_string()
  end
  def hours
    return @time/3600
  end
  def hours=(value)
    @time = value * 3600
    update_time_string()
  end
  def time_string
    return @time_string
  end
  def update_time_string()
    hours = pad(@time / 3600)
    @time = @time - 3600*(hours.to_i)
    minutes = pad(@time / 60)
    @time = @time - 60*(minutes.to_i)
    seconds = pad(@time)
    @time = hours.to_i * 3600 + minutes.to_i * 60 + seconds.to_i
    @time_string = "#{hours}:#{minutes}:#{seconds}"
    return @time_string
  end
  def pad(value)
    if value.to_s.length == 1
      return "0" + value.to_s
    else
      return value.to_s
    end
  end
end
