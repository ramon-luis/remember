class Flashcard < ApplicationRecord
  validates :cardfront, presence: true,
                        length: { minimum: 5 }
end
