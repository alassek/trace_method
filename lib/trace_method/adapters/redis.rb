require "trace_method/adapter"

module TraceMethod
  module Adapters
    class Redis < Adapter
      def find(trace_name)
        pool.with do |redis|
          (redis.keys(trace_name) + redis.keys("#{trace_name}:*")).sort
        end
      end
    end
  end
end
