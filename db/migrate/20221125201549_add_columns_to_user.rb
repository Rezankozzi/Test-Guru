# frozen_string_literal: true

class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.string :password
      t.string :e_mail
      t.boolean :admin, default: false

    end
  end
end
