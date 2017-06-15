require File.join(File.dirname(__FILE__), 'nodes/expression_node')
require File.join(File.dirname(__FILE__), 'nodes/statement_node')

class ProgramNodeBuilder

  def initialize(node)
    @node = node
  end

  def new_variable(name)

  end

  def new_assignment(variable, expression)

  end

  def new_return_statement(value)

  end

  def new_condition(condition, true_part, false_part)

  end

  def get_root_node()
    case node.class.name
    when 'String'
      ExpressionNode.new
    else
      StatementNode.new
    end
  end

  private

  attr_reader :node


end

