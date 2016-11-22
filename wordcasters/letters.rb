require 'squib'

spell_card_data = Squib.csv file: 'spell_cards.csv'
enemy_card_data = Squib.csv file: 'enemys.csv'

Squib::Deck.new(cards: spell_card_data['number'].size, layout: 'letters_layout.yml') do
  background color: 'white'
  rect layout: 'border'
  text str: spell_card_data['upper left'], layout: 'upper_left'
  text str: spell_card_data['upper right'], layout: 'upper_right'
  text str: spell_card_data['lower left'], layout: 'lower_left'
  text str: spell_card_data['lower right'], layout: 'lower_right'
  save format: :pdf
end

Squib::Deck.new(cards: enemy_card_data['number'].size, layout: 'enemy_layout.yml') do
  background color: 'black'
  text str: enemy_card_data['name']
  text str: enemy_card_data['effect']
  text str: enemy_card_data['word']
end
