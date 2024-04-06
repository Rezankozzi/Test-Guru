# frozen_string_literal: true

module SessionsHelper
  def flash_messages
    message = flash.to_hash.values&.join("\n\n")
    simple_format(message, class: 'flash-alert')
  end
end

