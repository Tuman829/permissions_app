class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :read
      t.boolean :write
      t.boolean :remove
      t.string :password_digest

      t.timestamps
    end
  end
end
