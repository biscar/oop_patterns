require File.join(File.dirname(__FILE__), 'tcp_closed')

module Patterns
  module Behaviors
    module State
      class TCPConnection

        attr_accessor :state

        def initialize(params = {})
          @state = Patterns::Behaviors::State::TCPClosed.instance
        end

        def active_open
          state.active_open(self)
        end

        def passive_open
          state.passive_open(self)
        end

        def close
          state.close(self)
        end

        def sendd
          state.sendd(self)
        end

        def acknowledge
          state.acknowledge(self)
        end

        def synchronize
          state.synchronize(self)
        end

        def process_octet(stream)
          stream
        end

        def change_state(tcp_state)
          self.state = tcp_state
        end

      end
    end
  end
end

