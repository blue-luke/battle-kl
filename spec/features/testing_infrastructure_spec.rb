# feature 'Testing infrastructure' do

#   xscenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end

# end

feature 'entering names' do

  scenario 'Can enter two names, then see the names' do
    visit('/')
    fill_in :player_1_name, with: 'Jane'
    fill_in :player_2_name, with: 'Jamal'
    click_button 'Submit'

    #save_and_open_page This produces a jpeg. Hashed out for now, want in final code though

    expect(page).to have_content 'Jane vs. Jamal'
  end

end

# feature 'displaying points' do

#   scenario 'Can enter two names, then see the names, then see their points' do
#     visit('/')
#     fill_in :player_1_name, with: 'Jane'
#     fill_in :player_2_name, with: 'Jamal'
#     click_button 'Submit'

#     expect(page).to have_content 'Jane has 100 points and Jamal has 100 points'
#   end

# end