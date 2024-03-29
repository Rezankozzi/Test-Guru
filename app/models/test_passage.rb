# frozen_string_literal: true

class TestPassage < ApplicationRecord
  SUCCESS_PASSING = 85
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :before_validation_set_first_question, on: :create
  before_validation :before_validation_set_next_question, on: :update

  def accept!(answer_ids)
    self.correct_questions += 1 if correct_answer?(answer_ids)
    save!
  end

  def completed?
    current_question.nil?
  end

  def success?
    test_percent >= SUCCESS_PASSING
  end

  def count_questions
    test.questions.order(:id).where('id < ?', current_question.id).count + 1
  end

  def test_percent
    (correct_questions.to_i * 100.0 / test.questions.count).ceil(1)
  end

  private

  def before_validation_set_first_question
    self.current_question = test.questions.first if test.present?
  end

  def before_validation_set_next_question
    self.current_question = next_question
  end

  def correct_answer?(answer_ids)
    answer_ids.reject! { |x| x.to_i.zero? }
    correct_answers.ids.sort == answer_ids.map(&:to_i).sort
  end

  def correct_answers
    current_question.answers.correct_answers
  end

  def set_current_question
    self.current_question = self.test.questions.first
  end

  def next_question
    test.questions.order(:id).where('id > ?', current_question.id).first
  end
end
