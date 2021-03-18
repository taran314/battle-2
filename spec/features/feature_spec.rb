feature 'Names' do
  scenario 'players can enter their names' do
    sign_in_and_play
    expect(page).to have_content('Taran vs Max')
  end

  scenario 'players hitpoints are displayed' do
    sign_in_and_play
    expect(page).to have_content('100/100 HP')
  end
end

feature 'Attack' do
  scenario 'it has an attack button' do
    sign_in_and_play
    expect(page).to have_button('attack')
  end

  scenario 'it takes us to an attack page' do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content('Taran attacked Max')
  end

  scenario 'from the attack page it returns to play' do
    sign_in_and_play
    attack_and_return
    expect(page).to have_content('90/100 HP')
  end

  scenario 'it switches the turns after each attack' do
    sign_in_and_play
    3.times { attack_and_return }
    expect(page).to have_content('80/100 HP')
  end
end