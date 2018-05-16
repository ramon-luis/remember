class UpdateColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :flashcards, :cardidea, :cardback
    remove_column :flashcards, :cardnotes
    remove_column :flashcards, :cardtags
    remove_column :flashcards, :cardtype
  end
end
