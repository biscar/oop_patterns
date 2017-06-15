require 'singleton'

module Patterns
  module Behaviors
    module State
      class TCPState
        include ::Singleton

        def transmit(tcp_connection, stream)

        end

        def active_open(tcp_connection)

        end

        def passive_open(tcp_connection)

        end

        def close(tcp_connection)

        end

        def synchronize(tcp_connection)

        end

        def acknowledge(tcp_connection)

        end

        def sendd(tcp_connection)

        end

        def change_state(tcp_connection, tcp_state)
          tcp_connection.change_state(tcp_state)
        end

      end
    end
  end
end

