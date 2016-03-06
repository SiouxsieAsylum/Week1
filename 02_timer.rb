class Timer
    attr_accessor :seconds

    def initialize
        @seconds = 0
    end

    def time_string=(time_string)
        @time_string = time_string
    end

    def seconds=(seconds)
        @seconds = seconds
    end

    def zeros(number)
        number <= 9 ? "#{number}".insert(0,"0") : "#{number}"
    end

    def time_string
        second = seconds % 60 # zeros(time % 60)
        hour = (seconds - second) / 3600
        hour.zero? == true ? minute = seconds / 60 : minute = ((seconds - (hour * 3600)) / 60)

     "#{zeros(hour)}:#{zeros(minute)}:#{zeros(second)}"
    end
end
