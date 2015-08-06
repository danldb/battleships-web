require 'spec_helper'
feature 'Starting a new game' do
  let(:board){"   ABCDEFGHIJ\n  ------------\n 1|          |1\n 2|          |2\n 3|          |3\n 4|          |4\n 5|          |5\n 6|          |6\n 7|          |7\n 8|          |8\n 9|          |9\n10|          |10\n  ------------\n   ABCDEFGHIJ\n"}
  scenario 'I am asked to enter my name' do
    visit '/'
    click_on 'New Game'
    expect(page).to have_content "What's your name?"
  end
  scenario 'I can start a game without entering a name' do
    visit '/game/new'
    click_on 'Play Battleships!'
    expect(page).to have_content "Welcome commander"
  end
  scenario 'I can enter a name' do
    visit '/game/new'
    fill_in 'name', with: 'Dan'
    click_on 'Play Battleships!'
    expect(page).to have_content "Welcome Dan"
  end
  scenario 'I see a board' do
    visit '/board'
    expect(page).to have_content board 
  end
end
