# frozen_string_literal: true

module SessionsHelper
  def flash_massages
    return unless flash[:alert]

    content_tag :p, flash[:alert], class: 'flash alert'
  end
end
