feature 'Home page' do
  scenario 'greeting the user' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end

  scenario 'user inputs name and birthday' do
    visit('/')
    fill_in :name, with: 'Deanna'
    fill_in :day, with: '26'
    fill_in :month, with: '11'
    click_button 'Go!'
  end
end
