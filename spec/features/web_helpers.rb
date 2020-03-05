
def sign_in_and_play
	visit('/')
	fill_in :player_1_name, with: 'Sly Fox'
	fill_in :player_2_name, with: 'Sneaky Minx'
	click_button 'Submit'
end