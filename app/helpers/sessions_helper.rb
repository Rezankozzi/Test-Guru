# frozen_string_literal: true

module SessionsHelper
  def flash_messages(key)
    return unless flash[key]

    content_tag :p, flash[key], class: 'flash-alert'
  end
end
