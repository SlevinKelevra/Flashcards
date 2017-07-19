require 'open-uri'
require 'nokogiri'


page = Nokogiri::HTML(open('http://1000mostcommonwords.com/1000-most-common-german-words/'))
all_values = []
pars_page = page.css('.entry-content tr')
pars_page.each do |i|
  one_value = []
  one_value[0] = i.css('td')[1].text
  one_value[1] = i.css('td')[2].text
  all_values << one_value
end

all_values.each do |i|
  Flashcard.create(translated_text: i[0], translated_text: i[1])
end
