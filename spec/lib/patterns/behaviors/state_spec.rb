require './lib/state_loader'

describe 'State' do

  example 'test' do
    connection = Patterns::Behaviors::State::TCPConnection.new
    expect(connection.state).to eq(Patterns::Behaviors::State::TCPClosed.instance)

    connection.active_open
    expect(connection.state).to eq(Patterns::Behaviors::State::TCPEstablished.instance)

    connection.close
    expect(connection.state).to eq(Patterns::Behaviors::State::TCPListen.instance)

    connection.sendd
    expect(connection.state).to eq(Patterns::Behaviors::State::TCPEstablished.instance)
  end

end