# frozen_string_literal: true

class TestPassage < ApplicationRecord
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true
end
