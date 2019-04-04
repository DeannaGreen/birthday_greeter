feature 'Enter name' do
  scenario 'user enters name' do
    visit('/')
    fill_in :name, with: 'Deanna'
    fill_in :birthday, with: '26-11-1997'
    click_button 'Submit'
    expect(page).to have_content '26-11-1997'
  end
end
