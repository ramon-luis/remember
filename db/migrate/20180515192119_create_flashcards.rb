class CreateFlashcards < ActiveRecord::Migration[5.1]
  def change
    create_table :flashcards do |t|
      t.text :cardfront
      t.string :cardtype
      t.text :cardidea
      t.text :cardnotes
      t.text :cardcode
      t.text :cardtags

      t.timestamps
    end
  end
end
