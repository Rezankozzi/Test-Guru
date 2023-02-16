class RemoteColumnFromTestPassage < ActiveRecord::Migration[6.1]
  def change
    remove_column(:test_passages, :count_questions)
  end
end
