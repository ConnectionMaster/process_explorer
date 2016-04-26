
module ProcessExplorer
  class Explore

    def self.processes
      raise NotImplementedError.new('functionality not yet implemented')
    end

    def self.process_exists?(pid)
      raise ArgumentError.new('pid must be a number') unless pid.is_a?(Fixnum)
      raise NotImplementedError.new('functionality not yet implemented')
    end

  end
end
