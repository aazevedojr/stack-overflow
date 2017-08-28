class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :content, presence: true
      t.integer :question_id
      t.integer :answer_id
      t.boolean :best_answer, default: false

      t.timestamps
    end
  end
end
