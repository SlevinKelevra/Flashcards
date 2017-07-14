class Flashcard < ApplicationRecord
  before_create do
    self.review_date = Time.now.days_since(3)
  end

end
