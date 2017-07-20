require 'open-uri'
require 'nokogiri'


page = Nokogiri::HTML(open('http://1000mostcommonwords.com/1000-most-common-german-words/'))
pars_page = page.css('.entry-content tr')
pars_page.each do |one_value|
  Flashcard.create(original_text: one_value.css('td')[1].text, translated_text: one_value.css('td')[2].text)
end

