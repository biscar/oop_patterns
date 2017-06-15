require File.join(File.dirname(__FILE__), '../../../compilator_loader')

module Patterns
  module Structural
    module Facade
      class Compiler
        def compile(input, output)
          scanner = Scanner.new(input)
          builder = ProgramNodeBuilder.new(output)
          parser = Parser.new

          parser.parse(scanner, builder)

          generator = RISCCodeGenerator.new(output)

          parse_tree = builder.get_root_node
          parse_tree.traverse(generator)

          parse_tree
        end
      end

    end
  end
end