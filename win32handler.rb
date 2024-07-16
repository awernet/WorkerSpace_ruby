module HANDLE
  S_OK = 0x00000000
  E_ABORT = 0x00000001
  E_FAIL = 0x000000002
  E_END = 0x00000003
end
	
class Handle < Object
	attr_reader :HandleResult, :HandleMessage
	
	def initialize()
		Handle(HANDLE::S_OK)
	end
	
	def Handle(*args)
		if(args.size == 1)
			HandleWithMessage(args[0], String.Empty)
		elsif(args.size == 2)
			HandleWithMessage(args[0], args[1])
		else
			raise "ArgumentError"
		end
	end

	private

	def HandleWithMessage(result, message)
		@HandleResult = result
		@HandleMessage = message
	end

end
