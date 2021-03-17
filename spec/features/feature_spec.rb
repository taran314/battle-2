feature 'Test' do
  scenario 'players can enter their names' do
    sign_in_and_play
    expect(page).to have_content('Taran vs Alec')
  end

  scenario 'players hitpoints are displayed' do
    sign_in_and_play
    expect(page).to have_content('100/100 HP')
  end
end
