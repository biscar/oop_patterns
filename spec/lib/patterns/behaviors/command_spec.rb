require './lib/command_loader'

describe 'Command' do

  example 'MacroCommand' do
    document = Patterns::Behaviors::Command::Document.new(name: 'action')

    commands = Patterns::Behaviors::Command::MacroCommand.new

    commands.add(Patterns::Behaviors::Command::OpenCommand.new)
    commands.add(Patterns::Behaviors::Command::PasteCommand.new(document: document))

    expect{commands.execute}.not_to raise_error
  end

  example 'MyClass' do
    receiver = Patterns::Behaviors::Command::MyClass.new

    command = Patterns::Behaviors::Command::SimpleCommand.new(action: 'action', receiver: receiver)
    expect(command.execute).to eq('action')
  end

  example 'OpenCommand' do
    receiver = Patterns::Behaviors::Command::OpenCommand.new
    expect(receiver.execute).to eq('question')
  end

  example 'PasteCommand' do
    document = Patterns::Behaviors::Command::Document.new(name: 'action')

    receiver = Patterns::Behaviors::Command::PasteCommand.new(document: document)
    expect(receiver.execute).to eq('action')
  end

end