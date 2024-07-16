class TaskBaseImplament
  attr_reader :stateTask, :abstractCounter, :timeOut

  def initialize(abstractCounter)
    @abstractCounter = abstractCounter
    @timeOut = 1
  end

  def SetTimeout(timeOut)
    @timeOut = timeOut
  end

  def StartAsync
    @stateTask = HANDLE::S_OK
  end

  def ExecuteAsync
    if(!@abstractCounter.IsAvaliableUpdate())
      @stateTask = HANDLE::E_END
    end
  end

  def EndAsync
    @stateTask = HANDLE::E_END
  end

end