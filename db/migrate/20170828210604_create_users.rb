class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, presence: true, uniqueness: true
      t.string :email, presence: true, uniqueness: true
      t.string :password_digest

      t.timestamps
    end
  end
end
