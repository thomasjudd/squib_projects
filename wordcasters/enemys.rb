Squib::Deck.new(cards: enemy_card_data['number'].size, layout: 'enemy_layout.yml') do
  background color: 'black'
  text str: enemy_card_data['name']
  text str: enemy_card_data['effect']
  text str: enemy_card_data['word']
end
