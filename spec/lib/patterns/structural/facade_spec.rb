require 'spec_helper'

require './lib/patterns/structural/facade/compiler'


describe 'Facade' do

  example 'ExpressonNode' do
    compiler = Patterns::Structural::Facade::Compiler.new

    expect(compiler.compile('1', 'code').class.name).to eq('Compilator::Nodes::ExpressionNode')
  end

  example 'StatementNode' do
    compiler = Patterns::Structural::Facade::Compiler.new

    expect(compiler.compile('1', 1).class.name).to eq('Compilator::Nodes::StatementNode')
  end
end