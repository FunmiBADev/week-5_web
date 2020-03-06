
feature 'Switch turns' do 
	context "seeing the current turn" do 
		scenario 'attack player 2' do 
			sign_in_and_play
			expect(page).to have_content "Turn: Sly Fox"
		end
	end

		scenario 'after player 1 attacks' do 
			sign_in_and_play
			click_button 'Attack'
			click_button 'OK'
			expect(page).to have_no_content 'Turn: Sly Fox'
			expect(page).to have_content "Turn: Sneaky Minx"
	end
end