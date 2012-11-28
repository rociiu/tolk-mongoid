module Tolk
  module Generators
    module Utils
      module InstanceMethods
        def display(output, color = :green)
          say("           -  #{output}", color)
        end

        def ask_for(wording, default_value = nil, override_if_present_value = nil)
          override_if_present_value.present? ?
            display("Using [#{override_if_present_value}] for question '#{wording}'") && override_if_present_value :
            ask("           ?  #{wording} Press <enter> for [#{default_value}] >", :yellow).presence || default_value
        end

        def ask_boolean(wording, default_value = nil)
          value = ask_for(wording, 'Y')
          value = (value == 'Y')
        end
      end

      module ClassMethods
      end
    end
  end
end

