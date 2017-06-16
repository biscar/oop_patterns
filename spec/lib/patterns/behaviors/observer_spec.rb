require './lib/observer_loader'

describe 'Observer' do

  example 'Custom Observer' do
    timer = Patterns::Behaviors::Observer::ClockTimer.new
    analog_clock = Patterns::Behaviors::Observer::AnalogClock.new(timer: timer)
    digital_clock = Patterns::Behaviors::Observer::DigitalClock.new(timer: timer)

    expect(analog_clock.current_time).to be_nil
    expect(digital_clock.current_time).to be_nil

    2.times do
      timer.tick

      expect(analog_clock.current_time).to eq("AnalogClock = #{timer.get_hour} - #{timer.get_minute} - #{timer.get_second}")
      expect(digital_clock.current_time).to eq("DigitalClock = #{timer.get_hour} - #{timer.get_minute} - #{timer.get_second}")
    end
  end

  example 'Ruby Observer' do
    timer = Patterns::Behaviors::Observer::Ruby::ClockTimer.new
    analog_clock = Patterns::Behaviors::Observer::Ruby::AnalogClock.new(timer: timer)
    digital_clock = Patterns::Behaviors::Observer::Ruby::DigitalClock.new(timer: timer)

    expect(analog_clock.current_time).to be_nil
    expect(digital_clock.current_time).to be_nil

    2.times do
      timer.tick

      expect(analog_clock.current_time).to eq("AnalogClock = #{timer.get_hour} - #{timer.get_minute} - #{timer.get_second}")
      expect(digital_clock.current_time).to eq("DigitalClock = #{timer.get_hour} - #{timer.get_minute} - #{timer.get_second}")
    end
  end

end