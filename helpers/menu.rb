require 'readline'


def menu(titlem options, sleep_time=1, clear=false)
	while true
		Printc.title("#{title} Gabriel Leal", :green, sleep_time, clear)
		options.each_with_index do |(key, value), i|
			puts "#{i} #{key}"
		end

		option = Readline.readline(">> ")
		if option !~ /\D/ and option.to_id.between?(0, options.count - 1)
			break
		else

			Print.pair('Warning:', 'Invalid option', :yellow, sleep_time)
		end
	end

	options.values[option.to_i]
end
