class ListDispatcher
  attr_reader :taskList

  def Create
    @taskList = Array.new
    #Тут следовало бы сделать статичный метод чтобы добавлять таски налету
    #Но для примера мы создадим их тут
    abstractCounter = RegisterCounter.new
    abstractCounter.Create(10)
    task = PushEventMessage.new(abstractCounter)
    @taskList.push(task)
    #task = PushEventMessage1.new
    #@taskList.push(task)
    #task = Factorial.new(5)
    #@taskList.push(task)
  end

  def Start 
    taskList.each { |task| task.StartAsync }
  end

end