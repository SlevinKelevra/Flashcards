class Flashcard < ApplicationRecord
  before_validation do
    self.review_date = Time.now.days_since(3) if self.review_date.nil?
  end

  validate :translated_text_can_not_be_equal_original_text
  validates :original_text, :translated_text, :review_date, presence: true

  def translated_text_can_not_be_equal_original_text
    unless self.original_text.nil? || self.translated_text.nil?
      if self.original_text.upcase == self.translated_text.upcase
        errors.add(:translated_text, 'can not be equal original text')
      end
    end
  end
end