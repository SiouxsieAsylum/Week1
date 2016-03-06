class Friend
  def greeting(who = nil)
        if who.nil? == true
            "Hello!"
        else
            "Hello, #{who}!"
        end
    end
end
