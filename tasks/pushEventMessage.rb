class PushEventMessage < TaskBaseImplament

  def StartAsync
    puts 'Start'
    super
  end

  def ExecuteAsync
    puts 'Execute'
    super
  end 

  def EndAsync
    puts 'End'
    super
  end

end