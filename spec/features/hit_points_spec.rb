
feature 'View hit points' do
	scenario 'see player 2 hit points' do 
		sign_in_and_play
		expect(page).to have_content 'Sneaky Minx: 60HP'
	end 
end