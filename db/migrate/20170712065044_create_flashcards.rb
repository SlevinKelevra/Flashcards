class CreateFlashcards < ActiveRecord::Migration[5.1]
  def change
    create_table :flashcards do |t|
      t.string :original_text
      t.string :translated_text
      t.date :review_date

      t.timestamps
    end
  end
end
