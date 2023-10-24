class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time = Time.at(@seconds).utc
    # puts "Time: #{time}"
    time.strftime('%H:%M:%S')
  end

  # 2nd option by using padded helper function
  # def padded(convert_time)
  #   convert_time.to_s.rjust(2, '0')
  # end

  # def time_string
  #   hours = @seconds / 3600
  #   minutes = (@seconds % 3600) / 60
  #   seconds = (@seconds % 3600) % 60
  #   "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  # end
end

# timer = Timer.new
# puts timer.seconds = 4000
# puts timer.time_string
