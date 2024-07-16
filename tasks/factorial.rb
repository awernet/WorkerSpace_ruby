class Factorial < TaskBaseImplament
  attr_reader :counter, :factorial, :result
  def initialize(factorial)
    @factorial = factorial
    @counter = 1
    @result = 1
  end
  def StartAsync
    puts "Начинаю подсчет #{@factorial}!"
  end

  def ExecuteAsync
    @result = @counter * @result
    
    if(@counter == @factorial)
      @stateTask = HANDLE::E_END
    end

    @counter = @counter + 1
  end

  def EndAsync
    puts "Результат подсчета #{@factorial}! = #{@result}"
  end
end