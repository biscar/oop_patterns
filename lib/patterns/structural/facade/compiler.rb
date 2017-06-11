require File.join(File.dirname(__FILE__), '../../../compilator_loader')

module Patterns
  module Structural
    module Facade
      class Compiler
        def compile(input, output)
          scanner = Compilator::Scanner.new(input)
          builder = Compilator::ProgramNodeBuilder.new(output)
          parser = Compilator::Parser.new

          parser.parse(scanner, builder)

          generator = Compilator::Generators::RISCCodeGenerator.new(output)

          parse_tree = builder.get_root_node
          parse_tree.traverse(generator)

          parse_tree
        end
      end

    end
  end
end