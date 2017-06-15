require 'spec_helper'

require './lib/help_loader'

describe 'Chain of responsibility' do

  example '1' do

    print_topic = 1
    paper_operation_topic = 2
    application_topic = 3

    application = Application.new(topic: application_topic)
    dialog = Dialog.new(help_handler: application, topic: print_topic)
    button = Button.new(help_handler: dialog, topic: paper_operation_topic )

    expect(application.handle_help).to eq('показать список разделов справки')
    expect(dialog.handle_help).to eq('справка Dialog')
    expect(button.handle_help).to eq('справка Button')
  end

  example '2' do
    print_topic = 1
    application_topic = 3

    application = Application.new(topic: application_topic)
    dialog = Dialog.new(help_handler: application, topic: print_topic)
    button = Button.new(help_handler: dialog, )

    expect(application.handle_help).to eq('показать список разделов справки')
    expect(dialog.handle_help).to eq('справка Dialog')
    expect(button.handle_help).to eq('справка Dialog')
  end

  example '3' do
    application_topic = 3

    application = Application.new(topic: application_topic)
    dialog = Dialog.new(help_handler: application)
    button = Button.new(help_handler: dialog)

    expect(application.handle_help).to eq('показать список разделов справки')
    expect(dialog.handle_help).to eq('показать список разделов справки')
    expect(button.handle_help).to eq('показать список разделов справки')
  end

end