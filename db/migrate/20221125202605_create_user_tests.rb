class CreateUserTests < ActiveRecord::Migration[6.1]
  def change
    create_table :user_tests do |t|
      t.string :status, default: 'in progress'
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
