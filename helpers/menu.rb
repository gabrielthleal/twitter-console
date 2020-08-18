require 'readline'

def menu(title, options, sleep_time=1, clear=false)
	option = nil 

	while true
		Printc.title("Welcome to Twitter Console - #{title}", :green, sleep_time, clear)
		
		options.each_with_index { |(key, value), i| puts "#{i} #{key}" }

		option = Readline.readline(">> ")
		
		if option !~ /\D/ and option.to_i.between?(0, options.count - 1)
			break
		else
			Printc.pair('Warning:', 'Invalid option', :yellow, sleep_time)
		end
	end

	options.values[option.to_i]
end
