require File.join(File.dirname(__FILE__), 'program_node')

class StatementNode < ProgramNode

  def traverse(code_generator)
    code_generator.visit(self)

  end

end
