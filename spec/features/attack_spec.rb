
feature 'Attacking' do 
	scenario 'attack player 2' do 
		sign_in_and_play
		click_button 'Attack'
		expect(page).to have_content 'Sly Fox attacked Sneaky Minx'
	end

	scenario 'reduce Player 2 HP by 10' do 
		sign_in_and_play
		click_button 'Attack'
		# click_link 'OK'
		expect(page).to have_no_content 'Sneaky Minx: 60HP'
		expect(page).to have_content "Sneaky Minx: 50HP"
	end
end