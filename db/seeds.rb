require 'open-uri'
require 'nokogiri'


page = Nokogiri::HTML(open('http://1000mostcommonwords.com/1000-most-common-german-words/'))
all_values = []
pars_page = page.css('.entry-content tr')
pars_page.each do |one_value|
  all_values << [one_value.css('td')[1].text, one_value.css('td')[2].text]
end

all_values.each do |one_value|
  Flashcard.create(original_text: one_value[0], translated_text: one_value[1])
end
