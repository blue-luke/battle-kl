feature 'Testing infrastructure' do

  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

end

feature 'entering names' do

  scenario 'Can enter two names, then see the names' do
    visit('/start')
    fill_in :player_1_name, with: 'Jane'
    fill_in :player_2_name, with: 'Jamal'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Jane vs. Jamal'
  end

end