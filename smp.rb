MODULUS = 23
BASE = 5

class Person
	def initialize(secret)
		@secret = secret	
	end

	def send_message
		calculate_key(BASE)
	end

	def compute_message(msg)
		calculate_key(msg)
	end

	private
	def calculate_key(x)
		return x ** @secret % MODULUS
	end

end 