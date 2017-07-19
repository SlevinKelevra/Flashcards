class Flashcard < ApplicationRecord
  before_create do
    self.review_date = Time.now.days_since(3)
  end

  validate :translated_text_can_not_be_equal_original_text
  validates :original_text, :translated_text, presence: true

  def translated_text_can_not_be_equal_original_text
    if self.original_text.upcase == self.translated_text.upcase
      errors.add(:translated_text, 'can not be equal original text')
    end
  end
end