
feature 'Testing infrastrure ' do 
	scenario 'Can run app and check page content' do 
		visit('/')
		expect(page).to have_content 'Testing infrastrure is working!'
	end
end