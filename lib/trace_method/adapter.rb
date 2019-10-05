module TraceMethod
  class Adapter
    attr_reader :pool

    def initialize(pool)
      @pool = pool
    end

    def find(*)
      raise NotImplementedError
    end

    def get(*)
      raise NotImplementedError
    end

    def set(*)
      raise NotImplementedError
    end
  end
end
