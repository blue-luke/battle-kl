# feature 'Testing infrastructure' do

#   xscenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end

# end

feature 'entering names' do

  scenario 'Can enter two names, then see the names' do
    sign_in_and_play

    #save_and_open_page This produces a jpeg. Hashed out for now, want in final code though
    
    expect(page).to have_content 'Jane vs. Jamal'
  end

end

feature 'displaying points' do

  scenario 'Can enter two names, then see the names, then see their points' do
    sign_in_and_play

    expect(page).to have_content 'Jane has 100 hit points'
    expect(page).to have_content 'Jamal has 100 hit points'
  end

end