require File.join(File.dirname(__FILE__), 'tcp_state')
require File.join(File.dirname(__FILE__), 'tcp_listen')

module Patterns
  module Behaviors
    module State
      class TCPEstablished < Patterns::Behaviors::State::TCPState

        def transmit(tcp_connection, stream)
          tcp_connection.process_octet(stream)
        end

        def close(tcp_connection)
          change_state(tcp_connection, Patterns::Behaviors::State::TCPListen.instance)
        end

      end
    end
  end
end

