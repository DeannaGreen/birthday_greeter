feature 'Enter name' do
  scenario 'user enters name' do
    visit('/')
    fill_in :name, with: 'Deanna'
    click_button 'Submit'
  end
end
