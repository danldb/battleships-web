require_relative '../../spec/spec_helper'
feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    click_on 'New Game'
    expect(page).to have_content "What's your name?"
  end
  scenario 'I can start a game without entering a name' do
    visit '/newgame'
    click_on 'Play Battleships!'
    expect(page).to have_content "Welcome commander"
  end
end
