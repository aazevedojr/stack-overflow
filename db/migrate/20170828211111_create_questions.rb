class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title, presence: true
      t.text :content, presence: true
      t.integer :questioner_id

      t.timestamps
    end
  end
end
