require File.join(File.dirname(__FILE__), '../../../mediator_loader')

module Patterns
  module Behaviors
    module Mediator
      class FontDialogDirector < Patterns::Behaviors::Mediator::DialogDirector

        attr_reader :button_ok, :button_cancel, :list_font, :field_font_name

        def create_widgets
          self.button_ok = Patterns::Behaviors::Mediator::Widgets::Button.new(director: self)
          self.button_cancel = Patterns::Behaviors::Mediator::Widgets::Button.new(director: self)
          self.list_font = Patterns::Behaviors::Mediator::Widgets::ListBox.new(director: self)
          self.field_font_name = Patterns::Behaviors::Mediator::Widgets::EntryField.new(director: self)
        end

        def widget_changed(widget)
          case widget
          when button_ok
            button_ok.set_text('ok')
          when button_cancel
            button_cancel.set_text('cancel')
          when list_font
            list_font.set_text('font')
          when field_font_name
            field_font_name.set_text('font_name')
          end
        end

        private

        attr_writer :button_ok, :button_cancel, :list_font, :field_font_name
      end
    end
  end
end

