def measure(num = 1)
    start_time = Time.now
        num.times {|n| yield if block_given?}
    elapsed_time = (Time.now - start_time)/num
end
