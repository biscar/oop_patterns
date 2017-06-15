require File.join(File.dirname(__FILE__), 'tcp_state')
require File.join(File.dirname(__FILE__), 'tcp_established')

module Patterns
  module Behaviors
    module State
      class TCPListen < Patterns::Behaviors::State::TCPState

        def sendd(tcp_connection)
          change_state(tcp_connection, Patterns::Behaviors::State::TCPEstablished.instance)
        end

      end
    end
  end
end
