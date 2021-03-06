feature 'Home page' do
  let(:date) { Date.today.mday }
  let(:month) { Date.today.mon }

  scenario 'greeting the user' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end

  scenario 'says happy birthday if your birthday is today' do
    visit('/')
    fill_in :name, with: 'Deanna'
    fill_in :day, with: date
    fill_in :month, with: month
    click_button 'Go!'
    expect(page).to have_content 'Happy Birthday!'
  end

  scenario 'has countdown if your birthday is not today' do
    visit('/')
    fill_in :name, with: 'Deanna'
    fill_in :day, with: '26'
    fill_in :month, with: '11'
    click_button 'Go!'
    expect(page).to have_content 'days till your birthday!'
  end
end
