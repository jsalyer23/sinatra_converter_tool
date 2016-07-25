require "pry"
MyApp.get "/" do
	erb :home
end


MyApp.get "/distance" do
	@type = params[:distance]
	@input = params[:input].to_i

	if @input != 0
		@distance = Distance.new(@input)
	
		if @type == "miles"
			@converted_to = "Kilometers"
			@conversion = @distance.to_kilometers
		else
			@converted_to = "Miles"
			@conversion = @distance.to_miles
		end
	end
	erb :distance
end

MyApp.get "/temperature" do
	@type = params[:temperature]
	@input = params[:input].to_i

	if @input != 0
		@temperature = Temperature.new(@input)
	
		if @type == "fahrenheit"
			@converted_to = "Celcius"
			@conversion = @temperature.to_celcius
		else
			@converted_to = "Fahrenheit"
			@conversion = @temperature.to_fahrenheit
		end
	end
	erb :temperature
end

MyApp.get "/weight" do
	@type = params[:weight]
	@converted_to = params[:convert_to]
	@input = params[:input].to_i

	if @input != 0
		@weight = Weight.new(@input)
	
		if @type == "pounds" && @converted_to == "stones"
			@converted_to = @converted_to.capitalize
			@conversion = @weight.pounds_to_stones

		elsif @type == "pounds" && @converted_to == "kilograms"
			@converted_to = @converted_to.capitalize
			@conversion = @weight.pounds_to_kilograms.

		elsif @type == "kilograms" && @converted_to == "pounds"
			@converted_to = @converted_to.capitalize
			@conversion = @weight.kilograms_to_pounds.

		elsif @type == "kilograms" && @converted_to == "stones"
			@converted_to = @converted_to.capitalize
			@conversion = @weight.kilograms_to_stones.to_f

		elsif @type == "stones" && @converted_to == "pounds"
			@converted_to = @converted_to.capitalize
			@conversion = @weight.stones_to_pounds.to_f

		elsif @type == "stones" && @converted_to == "kilograms"
			@converted_to = @converted_to.capitalize
			@conversion = @weight.stones_to_kilograms.to_f

		end
	end

	erb :weight
end