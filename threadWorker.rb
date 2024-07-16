class ThreadWorker
  attr_reader :CurentWorker, :ListDispatcher

  def initialize()
    Thread.report_on_exception = false
    @CurentWorker   = Worker.new
    @ListDispatcher = ListDispatcher.new
  end

  def StartAsync()
    begin
      @ListDispatcher.Create

      curentTaskWorker = Thread.new do
          @CurentWorker.StartAsync(@ListDispatcher)
      end
      ########
      result = curentTaskWorker.value().HandleResult

      if(result == HANDLE::S_OK)
        puts "Thread is Ended"
      end
      #######
    rescue Exception => e
      puts '****EXEPTION****'
      puts "Type Exception: #{e.detailed_message(highlight: true)}\n"
      puts "Message: #{e.message}\n"
      puts "Message: #{e.backtrace_locations.take(2)}\n"
      puts '****************'
    end
    
  end
end