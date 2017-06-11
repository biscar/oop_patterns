require File.join(File.dirname(__FILE__), 'program_node')

module Compilator
  module Nodes
    class StatementNode < Compilator::Nodes::ProgramNode

      def traverse(code_generator)
        code_generator.visit(self)

      end

    end
  end
end