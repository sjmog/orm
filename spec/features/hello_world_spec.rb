feature 'Hello World!' do
  scenario 'I visit the root route and see Hello World!' do
    visit('/')
    expect(page).to have_content 'Hello World!'
  end
end