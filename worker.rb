class Worker

  def StartAsync(listDispatcher)
    listDispatcher.Start
    listDispatcher.taskList.each do |task|
      Thread.new do
        while(task.stateTask != HANDLE::E_END)
          task.ExecuteAsync
              sleep task.timeOut
        end
        task.EndAsync
        task.stateTask    
      end 

    end
    Thread.list.each do |thread|
      if (thread != Thread.main && thread != Thread.current) 
        result = thread.value
        puts result 
      end
    end

    return Handle.new
  end
end