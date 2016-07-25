class Temperature

	def initialize(temp)
		@temp = temp
	end

	# Converts Celcius to Fahrenheit
	#
	# RETURNS FLOAT
	def to_fahrenheit
		(@temp * 1.8) + 32
	end

	# Converts Fahrenheit to Celcius
	#
	# RETURNS FLOAT
	def to_celcius
		(@temp - 32) * 1.8
	end

end

class Distance

	def initialize(distance)
		@distance = distance
		@converter = 1.609344
	end

	# Converts Kilometers to Miles
	#
	# RETURNS FLOAT
	def to_miles
		@distance / @converter
	end

	# Converts Miles to Kilometers
	#
	# RETURNS FLOAT
	def to_kilometers
		@distance * 1.609344
	end

end

class Weight

	def initialize(weight)
		@weight = weight

		@kilo_convert = 0.45359237
		@stone_convert = 14
	end

	# Converts Kilograms to Pounds
	#
	# RETURNS FLOAT
	def kilograms_to_pounds
		@weight / @kilo_convert
	end

	# Converts Stones to Pounds
	#
	# RETURNS FLOAT
	def stones_to_pounds
		@weight * @stone_convert
	end

	# Converts Pounds to Kilograms
	#
	# RETURNS FLOAT
	def pounds_to_kilograms
		@weight * @kilo_convert
	end

	# Converts Stones to Kilograms
	#
	# RETURNS FLOAT
	def stones_to_kilograms
		pounds = @weight * @stone_convert
		pounds * @kilo_convert
	end

	# Converts Pounds to Stones
	#
	# RETURNS FLOAT
	def pounds_to_stones
		@weight / @stone_convert
	end

	# Converts Kilograms to Stones
	#
	# RETURNS FLOAT
	def kilograms_to_stones
		pounds = @weight / @kilo_convert
		pounds / @stone_convert
	end

end


# puts weight.pounds_to_kilograms