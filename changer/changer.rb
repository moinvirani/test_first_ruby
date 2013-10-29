class Changer

	attr_accesor :cents

	def initialize
		@cents = 0
	end
	
	def self.make_change(value)
		change_arr = []

		quarter = value/25
		dime = (value%25)/10
		nickel = ((value%25)%10)/5
		pennies = ((value%25)%10)%5		

		dime.times do 
			change_arr << (10)
		end

		
		nickel.times do 
			change_arr << (5)
		end

		
		pennies.times do 	
			change_arr << (1)
		end

		return change_arr
	end
end

# penny = 1
# nickel = 5 * penny
# dime = 10 * penny 
# quarter = 25 * penny