require 'player'

describe Player do 
	subject(:sly_fox) { Player.new('Sly Fox') }
	subject(:sneaky_minx) { Player.new('Sneaky Minx')}

	describe '#name' do 
		it 'returns the name' do
			expect(sly_fox.name).to eq 'Sly Fox'
			expect(sneaky_minx.name).to eq 'Sneaky Minx'
		end
	end

	describe '#hit_points' do 
		it 'returns the hit points' do 
			expect(sly_fox.hit_points).to eq described_class::DEFAULT_HIT_POINTS
		end
	end

	describe '#attack' do 
		it 'damages the player' do 
			expect(sneaky_minx).to receive(:receive_damage)
			sly_fox.attack(sneaky_minx)
		end
	end

	describe '#receive_damage' do 
		it 'reduces the player hit points' do 
			expect {sly_fox.receive_damage}.to change { sly_fox.hit_points}.by(-10)
		end
	end

end