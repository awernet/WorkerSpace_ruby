class RegisterCounter < IAbstractCounter
  private

  attr_reader :infinity, :counter

  public
    def Create(count)
      @counter = count
      if(@counter == 0)
        @infinity = true
      end
    end

    def IsAvaliableUpdate()
      if(!@infinity)
        @counter = @counter - 1
      end
      return !(@counter == 0 && !@infinity)
    end
end