

feature 'User wants a greeting' do
  scenario 'says Hello World' do
    visit hello_world_path
    expect(page).to have_css 'h1', :text => 'Hello World', :visible => true
  end
end