# As a user
# So I have somewhere to stay
# I want to be able to request a space from a host

feature 'show the calendar, select a date and then submit' do
  scenario 'picking an available date' do
    add_row_to_test_database()
    add_row_with_narrow_date_to_test_database()
    # add a date for 12-14 October 2020
    visit('/spaces')
    click_button('2')
    # fill_in('month', with: '1')
    p page.body
    expect(page).to have_content "Pick a date"
    # expect(page).to have_content "13"
    select('13', from: 'days')
    # click_button('13')
    click_button('Request to Book')
    expect(page).to have_content "Requests"
  end
end
