# frozen_string_literal: true

module SessionsHelper
  def flash_messages
    flash.to_hash&.values
  end
end

