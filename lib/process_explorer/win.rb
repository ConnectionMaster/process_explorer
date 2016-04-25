require 'win32ole'

module ProcessExplorer
  class Explore

    def self.processes
      procs= WIN32OLE.connect("winmgmts:\\\\.")
      raise "Win32OleError" unless procs

      result = []
      procs.InstancesOf("win32_process").each do |process|
      	result << { 
	            name: process.name,
		    pid: process.processId 
		  }
      end
      
      result
    end

    def self.process_exists?(pid)
      raise "pid must be number" unless pid.is_a?(Fixnum)

      Explore.processes.any? { |p| p[:pid] == pid }
    end

  end
end
