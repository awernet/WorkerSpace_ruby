class PushEventMessage1 < TaskBaseImplament

  def StartAsync
    puts "Start1"
    super
  end

  def ExecuteAsync
    puts "Execute1"
    @stateTask = HANDLE::E_END
  end 

  def EndAsync
    puts "End1"
  end
  
end