require_relative 'extends/string'

require_relative 'win32handler'
require_relative 'worker'
require_relative 'threadWorker'
require_relative 'listDispatcher'

require_relative 'taskBaseImplament'
require_relative 'tasks/pushEventMessage'
require_relative 'tasks/pushEventMessage1'
require_relative 'tasks/factorial'

require_relative 'interfaces/iAbstractCounter'
require_relative 'registerCounter'

threadWorker = ThreadWorker.new
threadWorker.StartAsync
#puts handle.Handle(HANDLE::S_OK, "")