def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Taran'
  fill_in :player_2, with: 'Max'
  click_button('Submit')
end

def attack_and_return
  click_button "attack"
  click_button "return"
end