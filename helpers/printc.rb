require 'colorize'

class Printc
	class << self
		def title(msg, color, sleep_time=0, clear=false)
			puts `clear` if clear

			puts "-" * 100
			puts "* #{msg}".colorize(color)
			puts "-" * 100 

			sleep(sleep_time)
		end	       

		def pair(title, result, color_title=:white, color_result=:white, sleep_time=0)
			print "* #{title}".colorize(color_title)
			puts " #{result}".colorize(color_result)
			sleep(sleep_time)
		end
	end
end
