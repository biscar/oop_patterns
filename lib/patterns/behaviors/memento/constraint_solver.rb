require 'singleton'
require File.join(File.dirname(__FILE__), 'constraint_solver_memento')

module Patterns
  module Behaviors
    module Memento

      class ConstraintSolver

        include ::Singleton

        attr_reader :constraint_solver_memento

        def solve

        end

        def add_constraint(start_connection, end_connection)

        end

        def remove_constraint(start_connection, end_connection)

        end

        def set_memento(constraint_solver_memento)
          @constraint_solver_memento = constraint_solver_memento
        end

        def create_memento
          @constraint_solver_memento = Patterns::Behaviors::Memento::ConstraintSolverMemento.new
        end

      end
    end
  end
end
