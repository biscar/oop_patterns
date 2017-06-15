require File.join(File.dirname(__FILE__), 'tcp_state')
require File.join(File.dirname(__FILE__), 'tcp_established')
require File.join(File.dirname(__FILE__), 'tcp_listen')

module Patterns
  module Behaviors
    module State
      class TCPClosed < Patterns::Behaviors::State::TCPState

        def active_open(tcp_connection)
          # do something
          change_state(tcp_connection, Patterns::Behaviors::State::TCPEstablished.instance)
        end

        def passive_open(tcp_connection)
          # do something
          change_state(tcp_connection, Patterns::Behaviors::State::TCPListen.instance)
        end

      end
    end
  end
end
