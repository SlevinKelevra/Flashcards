module FlashcardHelper
  def short_date(date)
    date.try(:strftime, "%d.%m.%Y")
  end
end
