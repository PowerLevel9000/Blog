module IncrementorDcrementor
    # module for making code base dry but couldn't figure out  *** need help ***
    def increment_counter(counter)
        self.send("#{counter}=", self.send(counter) + 1)
        save
    end
    
      def decrement_counter(counter)
        self.send("#{counter}=", self.send(counter) - 1)
        save
    end
end