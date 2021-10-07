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

    expect(page).to have_content 'J vs. K'
  end

end

feature 'displaying points' do

  scenario 'Can enter two names, then see the names, then see their points' do
    sign_in_and_play

    expect(page).to have_content 'J has 100 hit points'
    expect(page).to have_content 'K has 100 hit points'
  end

end

feature 'attacking someone' do

  scenario 'attack someone, get confirmation message' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'J attacked K'
  end

end

# feature 'attacking and damaging someone' do

#   scenario 'attack someone, do damage, and see the reduction in points' do
#     sign_in_and_play
#     #
#     #expect{p1 attack p2}.to change {@player_2_hit_points}.by(-10)
#     #expect(page).to have_content 'Jamal has 90 hit points'
#   end

# end