MODULUS = 23
BASE = 5

class Person
	def initialize(secret)
		@secret = secret	
	end

	def send_message
		return BASE ** @secret % MODULUS
	end

	def compute_message(msg)
		msg ** @secret % MODULUS
	end

end 